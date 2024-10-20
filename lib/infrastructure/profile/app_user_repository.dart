import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:flutter_college/domain/profile/i_app_user_repository.dart';
import 'package:flutter_college/domain/profile/profile_failures.dart';
import 'package:flutter_college/infrastructure/core/firebase_storage_helper.dart';
import 'package:flutter_college/infrastructure/core/firestore_helper.dart';
import 'package:flutter_college/infrastructure/profile/app_user_dto.dart';
import 'package:flutter_college/res/strings/const_strings.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: IAppUserRepository)
class AppUserRepository implements IAppUserRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  // ignore: unused_field
  final Uuid _uuid;

  AppUserRepository(
    this._firestore,
    this._firebaseStorage,
    this._uuid,
  );

  @override
  Future<Either<ProfileFailures, Unit>> createAppUser(AppUser appUser) async {
    try {
      final userDto = AppUserDto.fromDomain(appUser);
      final userDocRef = await _firestore.userDocument();
      await userDocRef.set(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailures.insufficientPermission());
      } else {
        return left(const ProfileFailures.unknownFailure());
      }
    }
  }

  @override
  Stream<Either<ProfileFailures, AppUser>> watchAppUser() async* {
    final userDocRef = await _firestore.userDocument();
    try {
      yield* userDocRef.snapshots().map((event) {
        final appUserDto = AppUserDto.fromFirestore(event);
        appUserDto.toDomain(); // toDomain() culprit
        return right(AppUserDto.fromFirestore(event).toDomain());
      });
    } catch (e) {
      yield left(const ProfileFailures.unknownFailure());
    }
  }

  @override
  Future<Either<ProfileFailures, AppUser>> getAppUser() async {
    try {
      final userDocRef = await _firestore.userDocument();
      final userDocSnap = await userDocRef.get();
      return right(AppUserDto.fromFirestore(userDocSnap).toDomain());
    } catch (e) {
      return left(const ProfileFailures.unknownFailure());
    }
  }

  @override
  Future<Either<ProfileFailures, Unit>> updateAppUser(AppUser appUser) async {
    try {
      final userDto = AppUserDto.fromDomain(appUser);
      final userDocRef = await _firestore.userDocument();
      await userDocRef.update(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ProfileFailures.insufficientPermission());
      } else {
        return left(const ProfileFailures.unknownFailure());
      }
    }
  }

  @override
  Future<Either<ProfileFailures, String>> uploadProfileImage(File image) async {
    try {
      final storageReference =
          await _firebaseStorage.userProfilePicsReference();
      final uploadTask = storageReference.putFile(image);
      await uploadTask;
      final imagePath = storageReference.fullPath;
      final url = await _firebaseStorage.ref(imagePath).getDownloadURL();
      return right(url);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ProfileFailures.insufficientPermission());
      } else {
        return left(const ProfileFailures.unknownFailure());
      }
    }
  }

  @override
  Future<bool> userExists() async {
    final userDocRef = await _firestore.userDocument();
    final userDocSnap = await userDocRef.get();
    if (userDocSnap.exists) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Stream<Either<ProfileFailures, AppUser>> watchUserById(String id) async* {
    try {
      yield* _firestore
          .collection(ConstStrings.users)
          .where(ConstStrings.uid, isEqualTo: id)
          .limit(1)
          .snapshots()
          .map((event) {
        final queryDocumentSnapshot = event.docs;
        final appUserDto = AppUserDto.fromFirestore(queryDocumentSnapshot[0]);
        appUserDto.toDomain();
        return right(appUserDto.toDomain());
      });
    } catch (e) {
      yield left(const ProfileFailures.unknownFailure());
    }
  }
}
