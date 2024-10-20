import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailures with _$AuthFailures {
  const factory AuthFailures.cancelledByUser() = CancelledByUser;
  const factory AuthFailures.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailures.invalidEmailPasswordCombination() =
      InvalidEmailPasswordCombination;
  const factory AuthFailures.userDisabled() = UserDisabled;
  const factory AuthFailures.operationNotAllowed() = OperationNotAllowed;
  const factory AuthFailures.expiredActionCode() = ExpiredActionCode;
  const factory AuthFailures.invalidVerificationCode() =
      InvalidVerificationCode;
  const factory AuthFailures.invalidVerificationId() = InvalidVerificationId;
  const factory AuthFailures.tooManyRequests() = TooManyRequests;
  const factory AuthFailures.networkRequestFailed() = NetworkRequestFailed;
  const factory AuthFailures.quotaExceeded() = QuotaExceeded;
  const factory AuthFailures.emailAlreadyVerified() = EmailAlreadyVerified;
  const factory AuthFailures.userNotFound() = UserNotFound;
  const factory AuthFailures.unknownError(String message, String errorCode) =
      UnknownError;
  const factory AuthFailures.invalidEmail() = InvalidEmail;
}
