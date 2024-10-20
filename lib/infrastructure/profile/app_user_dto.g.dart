// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUserDtoImpl _$$AppUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$AppUserDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      description: json['description'] as String?,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
      dateTime: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['dateTime'], const TimestampConverter().fromJson),
    );

Map<String, dynamic> _$$AppUserDtoImplToJson(_$AppUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profilePictureUrl': instance.profilePictureUrl,
      'description': instance.description,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
      'dateTime': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.dateTime, const TimestampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
