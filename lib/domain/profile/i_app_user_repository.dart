import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:flutter_college/domain/profile/profile_failures.dart';

abstract class IAppUserRepository {
  /// creates profile in `users` collection
  /// also adds user `uid` in `notifications` collection
  Future<Either<ProfileFailures, Unit>> createAppUser(AppUser appUser);
  Stream<Either<ProfileFailures, AppUser>> watchAppUser();
  Future<Either<ProfileFailures, AppUser>> getAppUser();
  Future<Either<ProfileFailures, Unit>> updateAppUser(AppUser appUser);
  Future<Either<ProfileFailures, String>> uploadProfileImage(File image);
  Future<bool> userExists();

  /// Watch an [AppUser] by `uid`
  Stream<Either<ProfileFailures, AppUser>> watchUserById(String id);
}
