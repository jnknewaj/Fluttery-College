import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failures.freezed.dart';

@freezed
class ProfileFailures with _$ProfileFailures {
  const factory ProfileFailures.insufficientPermission() =
      _InsufficientPermission;
  const factory ProfileFailures.unknownFailure() = _UnknownFailure;
}
