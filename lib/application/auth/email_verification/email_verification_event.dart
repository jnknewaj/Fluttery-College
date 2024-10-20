part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationEvent with _$EmailVerificationEvent {
  const factory EmailVerificationEvent.sentVerificationEmail() =
      _SentVerificationEmail;
}
