part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.initial() = _Initial;
  const factory EmailVerificationState.sendingLink() = _SendingLink;
  const factory EmailVerificationState.linkSent() = _LinkSent;
  const factory EmailVerificationState.isVerified() = _IsVerified;
  const factory EmailVerificationState.failed(AuthFailures failure) = _Failed;
}
