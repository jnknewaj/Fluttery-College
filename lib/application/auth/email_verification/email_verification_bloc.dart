import 'package:bloc/bloc.dart';
import 'package:flutter_college/domain/auth/auth_failures.dart';
import 'package:flutter_college/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'email_verification_event.dart';
part 'email_verification_state.dart';
part 'email_verification_bloc.freezed.dart';

@injectable
class EmailVerificationBloc
    extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  final IAuthFacade _authFacade;

  EmailVerificationBloc(this._authFacade)
      : super(const EmailVerificationState.initial()) {
    on<EmailVerificationEvent>(_onEvents);
  }

  Future<void> _onEvents(
    EmailVerificationEvent event,
    Emitter<EmailVerificationState> emit,
  ) {
    return event.map(
      sentVerificationEmail: (e) async {
        emit(const EmailVerificationState.sendingLink());
        final either = await _authFacade.sendVerificationEmail();
        emit(either.fold(
          (f) {
            return f.maybeMap(
              emailAlreadyVerified: (_) =>
                  const EmailVerificationState.isVerified(),
              orElse: () => EmailVerificationState.failed(f),
            );
          },
          (_) => const EmailVerificationState.linkSent(),
        ));
      },
    );
  }
}
