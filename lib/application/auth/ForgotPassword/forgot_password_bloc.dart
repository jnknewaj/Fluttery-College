import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_college/domain/auth/auth_failures.dart';
import 'package:flutter_college/domain/auth/i_auth_facade.dart';
import 'package:flutter_college/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuthFacade _authFacade;

  ForgotPasswordBloc(this._authFacade) : super(ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>(_onEvents);
  }

  Future<void> _onEvents(
    ForgotPasswordEvent event,
    Emitter<ForgotPasswordState> emit,
  ) {
    return event.map(
      emailChanged: (e) async {
        emit(state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          failureOrSuccessOption: none(),
        ));
      },
      sentLink: (e) async {
        Either<AuthFailures, Unit>? failureOrSuccess;
        if (state.emailAddress.isValid()) {
          emit(
            state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess =
              await _authFacade.forgotPassword(state.emailAddress);

          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        } else {
          emit(
            state.copyWith(
              showErrorMessages: true,
              failureOrSuccessOption: none(),
            ),
          );
        }
      },
    );
  }
}
