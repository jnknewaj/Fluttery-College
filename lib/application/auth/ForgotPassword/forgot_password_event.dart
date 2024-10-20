part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String emailStr) =
      _EmailChanged;
  const factory ForgotPasswordEvent.sentLink() = _SentLink;
}
