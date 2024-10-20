import 'package:flutter_college/domain/auth/value_objects.dart';
import 'package:flutter_college/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_user.freezed.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    required UniqueId id,
    required String name,
    required EmailAddress emailAddress,
    String? profilePictureUrl,
    String? description,
    DateTime? dateTime, // createdAt
  }) = _AppUser;

  factory AppUser.empty() => _AppUser(
        id: UniqueId(),
        name: '',
        emailAddress: EmailAddress(''),
        description: '',
        profilePictureUrl: '',
        dateTime: DateTime.now(),
      );
}
