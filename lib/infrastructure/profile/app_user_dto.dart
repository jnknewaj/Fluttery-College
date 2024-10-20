import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_college/domain/auth/value_objects.dart';
import 'package:flutter_college/domain/core/value_objects.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:flutter_college/infrastructure/core/server_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user_dto.freezed.dart';
part 'app_user_dto.g.dart';

@freezed
abstract class AppUserDto implements _$AppUserDto {
  const AppUserDto._();

  const factory AppUserDto({
    required String id,
    required String name,
    required String email,
    String? profilePictureUrl,
    String? description,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
    @TimestampConverter() DateTime? dateTime,
  }) = _AppUserDto;

  factory AppUserDto.fromDomain(AppUser appUser) {
    return AppUserDto(
      id: appUser.id.getOrCrash(),
      name: appUser.name,
      email: appUser.emailAddress.getOrCrash(),
      description: appUser.description,
      profilePictureUrl: appUser.profilePictureUrl,
      serverTimeStamp: FieldValue.serverTimestamp(),
      dateTime: appUser.dateTime,
    );
  }

  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(id),
      emailAddress: EmailAddress(email),
      name: name,
      description: description,
      profilePictureUrl: profilePictureUrl,
      dateTime: dateTime,
    );
  }

  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  factory AppUserDto.fromFirestore(DocumentSnapshot doc) {
    return AppUserDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
