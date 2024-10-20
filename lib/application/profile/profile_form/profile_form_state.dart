part of 'profile_form_bloc.dart';

@freezed
abstract class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required AppUser appUser,
    required bool isEditing,
    required bool isSaving,
    required bool showErrorMessages,
    required Option<Either<ProfileFailures, Unit>> saveFailureOrSuccessOption,
    required Option<Either<ProfileFailures, String>>
        imageUploadFaiureOrSuccessOption,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        appUser: AppUser.empty(),
        isEditing: false,
        isSaving: false,
        showErrorMessages: false,
        saveFailureOrSuccessOption: none(),
        imageUploadFaiureOrSuccessOption: none(),
      );
}
