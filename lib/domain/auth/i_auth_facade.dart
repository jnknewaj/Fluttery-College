import 'package:dartz/dartz.dart';
import 'package:flutter_college/domain/auth/auth_failures.dart';
import 'package:flutter_college/domain/auth/value_objects.dart';
import 'package:flutter_college/domain/profile/app_user.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailures, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<void> signOut();

  Future<Option<AppUser>> getSignedInUser();
  Future<Option<String>> getSignedInUserId();
  Option<String> getSignedInUserEmail();
  Future<Either<AuthFailures, Either<Unit, AppUser>>> signInWithGoogle();
  Future<Either<AuthFailures, Unit>> sendVerificationEmail();
  Future<Either<AuthFailures, Unit>> forgotPassword(EmailAddress email);
}
