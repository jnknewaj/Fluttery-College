import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:flutter_college/domain/profile/i_app_user_repository.dart';
import 'package:flutter_college/domain/profile/profile_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/value_objects.dart';

part 'profile_form_bloc.freezed.dart';
part 'profile_form_event.dart';
part 'profile_form_state.dart';

/// initial user profile just have name and email field (validated)
/// called only after successful user registration
@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IAppUserRepository _repository;
  ProfileFormBloc(this._repository) : super(ProfileFormState.initial()) {
    on<ProfileFormEvent>(_onEvents);
  }

  Future<void> _onEvents(
    ProfileFormEvent event,
    Emitter<ProfileFormState> emit,
  ) {
    return event.map(
      initialized: (e) async {
        emit(e.initialUserOption.fold(
          () => state,
          (initialuser) => state.copyWith(
            appUser: initialuser,
            isEditing: true,
          ),
        ));
      },
      nameChanged: (e) async {
        emit(state.copyWith(
          appUser: state.appUser.copyWith(name: e.nameStr),
          saveFailureOrSuccessOption: none(),
        ));
      },
      emailChanged: (e) async {
        emit(state.copyWith(
          appUser:
              state.appUser.copyWith(emailAddress: EmailAddress(e.emailStr)),
          saveFailureOrSuccessOption: none(),
        ));
      },
      descriptionChanged: (e) async {
        emit(state.copyWith(
          appUser: state.appUser.copyWith(description: e.descriptionStr),
          saveFailureOrSuccessOption: none(),
        ));
      },
      profilePicChanged: (e) async {
        Either<ProfileFailures, String>? failureOrSuccess;
        emit(
          state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ),
        );
        failureOrSuccess = await _repository.uploadProfileImage(e.image);
        emit(
          state.copyWith(
            appUser: state.appUser.copyWith(
              profilePictureUrl: failureOrSuccess.fold(
                (l) => null,
                (r) => r,
              ),
            ),
            imageUploadFaiureOrSuccessOption: optionOf(failureOrSuccess),
            saveFailureOrSuccessOption: none(),
          ),
        );
      },
      saved: (e) async {
        Either<ProfileFailures, Unit>? failureOrSuccess;
        emit(
          state.copyWith(
            isSaving: true,
            saveFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = state.isEditing
            ? await _repository.updateAppUser(state.appUser)
            : await _repository.createAppUser(state.appUser);
        emit(
          state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
      thirdPartySignInSaved: (e) async {
        late Either<ProfileFailures, Unit> failureOrUnit;
        emit(state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        ));

        failureOrUnit = await _repository.createAppUser(e.appUser);

        emit(state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrUnit),
        ));
      },
    );
  }
}
