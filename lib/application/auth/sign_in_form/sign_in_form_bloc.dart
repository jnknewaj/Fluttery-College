import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_college/domain/auth/auth_failures.dart';
import 'package:flutter_college/domain/auth/i_auth_facade.dart';
import 'package:flutter_college/domain/auth/value_objects.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(_onEvents);
  }

  Future<void> _onEvents(
    SignInFormEvent event,
    Emitter<SignInFormState> emit,
  ) {
    return event.map(
      emailChanged: (e) async {
        emit(state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        ));
      },
      passwordChanged: (e) async {
        emit(state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        ));
      },
      confirmPasswordChanged: (e) async {
        emit(state.copyWith(
          confirmPassword: Password(e.cPassStr),
          authFailureOrSuccessOption: none(),
        ));
      },
      registerWithEmailAndPasswordPressed: (e) async {
        Either<AuthFailures, Unit>? failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isConfirmPasswordValid = state.confirmPassword.isValid();

        state.confirmPassword.value.fold(
          (l) {},
          (_) {},
        );

        // Ensure passwords match before proceeding
        final passwordsMatch = state.password.value.fold(
          (l) => false, // Invalid password
          (passwordStr) => state.confirmPassword.value.fold(
            (l) => false, // Invalid confirm password
            (confirmPasswordStr) =>
                passwordStr == confirmPasswordStr, // Compare both
          ),
        );

        if (isEmailValid &&
            isPasswordValid &&
            isConfirmPasswordValid &&
            passwordsMatch) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        } else if (!passwordsMatch) {
          emit(
            state.copyWith(
              showErrorMessages: true,
              authFailureOrSuccessOption: none(),
            ),
          );
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
      signInWithEmailAndPasswordPressed: (_) async {
        Either<AuthFailures, Unit>? failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
      signInWithGooglePressed: (ev) async {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        emit(
          state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: none(),
            thirdPartyAuthFailureOrSuccessOption: some(failureOrSuccess),
          ),
        );
      },
    );
  }
}
