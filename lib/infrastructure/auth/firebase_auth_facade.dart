import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_college/domain/auth/auth_failures.dart';
import 'package:flutter_college/domain/auth/i_auth_facade.dart';
import 'package:flutter_college/domain/auth/value_objects.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:flutter_college/infrastructure/core/firestore_helper.dart';
import 'package:flutter_college/infrastructure/profile/app_user_dto.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firestore,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(firebaseAuthExceptionToFailures(e));
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(firebaseAuthExceptionToFailures(e));
    }
  }

  @override
  Future<Either<AuthFailures, Either<Unit, AppUser>>> signInWithGoogle() async {
    try {
      final googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const AuthFailures.cancelledByUser());
      }
      final googleAuthentication = await googleAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      final userExists =
          await _userExists(); // navigation to authenticated ui happening here even before completing this function
      debugPrint('NGB : User exists : $userExists');
      if (userExists) {
        return right(left(unit));
      }

      final appUser = AppUser.empty().copyWith(
        name: userCredential.user!.displayName!,
        emailAddress: EmailAddress(userCredential.user!.email!),
      );

      return right(right(appUser));
    } on FirebaseAuthException catch (e) {
      return left(firebaseAuthExceptionToFailures(e));
    } on PlatformException catch (e) {
      return left(platformExceptionToFailures(e));
    }
  }

  Future<bool> _userExists() async {
    final userDocRef = await _firestore.userDocument();
    final userDocSnap = await userDocRef.get();
    if (userDocSnap.exists) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Option<String>> getSignedInUserId() async {
    final firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.uid);
  }

  // temp() {
  //   _firebaseAuth.authStateChanges().listen((User? user) {
  //     if (user != null) {
  //       emit(const AuthCheckState.authenticated());
  //     } else {
  //       emit(const AuthCheckState.unauthenticated());
  //     }
  //   });
  // }

  @override
  Option<String> getSignedInUserEmail() {
    final firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.email);
  }

  // todo not yet implemented
  @override
  Future<Option<AppUser>> getSignedInUser() async {
    final userDocRef = await _firestore.userDocument();
    final event = await userDocRef.get();
    return optionOf(AppUserDto.fromFirestore(event).toDomain());
  }

  @override
  Future<Either<AuthFailures, Unit>> sendVerificationEmail() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        throw FirebaseAuthException(code: 'user-not-found');
      }
      if (!user.emailVerified) {
        await user.sendEmailVerification();
        return right(unit);
      }
      // custom exception code. Handled in the custom function.
      throw FirebaseAuthException(code: 'email-already-verified');
    } on FirebaseAuthException catch (e) {
      print('MY ;;;;;;; ${e.toString()}');
      return left(firebaseAuthExceptionToFailures(e));
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> forgotPassword(EmailAddress email) async {
    try {
      final emailAddress = email.getOrCrash();
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddress);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(firebaseAuthExceptionToFailures(e));
    }
  }

  AuthFailures firebaseAuthExceptionToFailures(FirebaseAuthException e) {
    final msg = e.message;
    final code = e.code;
    switch (e.code) {
      case 'invalid-email':
        return const AuthFailures.invalidEmailPasswordCombination();
      case 'invalid-credential':
        return const AuthFailures.invalidEmailPasswordCombination();
      case 'wrong-password':
        return const AuthFailures.invalidEmailPasswordCombination();
      case 'email-already-in-use':
        return const AuthFailures.emailAlreadyInUse();
      case 'user-disabled':
        return const AuthFailures.userDisabled();
      case 'quota-exceeded':
        return const AuthFailures.quotaExceeded();
      case 'network-request-failed':
        return const AuthFailures.networkRequestFailed();
      case 'too-many-requests':
        return const AuthFailures.tooManyRequests();
      case 'operation-not-allowed':
        return const AuthFailures.operationNotAllowed();
      case 'invalid-verification-code':
        return const AuthFailures.invalidVerificationCode();
      case 'invalid-verification-id':
        return const AuthFailures.invalidVerificationId();
      case 'expired-action-code':
        return const AuthFailures.expiredActionCode();
      case 'email-already-verified':
        return const AuthFailures.emailAlreadyVerified();
      case 'user-not-found':
        return const AuthFailures.userNotFound();
      case 'auth/invalid-email':
        return const AuthFailures.invalidEmail();
      case 'auth/user-not-found':
        return const AuthFailures.userNotFound();
      default:
        return AuthFailures.unknownError(
            msg ?? 'Unknown exception. Check error code.', code);
    }
  }

  AuthFailures platformExceptionToFailures(PlatformException e) {
    switch (e.code) {
      case 'network_error':
        return const AuthFailures.networkRequestFailed();
      default:
        return AuthFailures.unknownError(
            'Unknown [PlatformException] : ${e.message}', 'code : ${e.code}');
    }
  }
}
