// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res, ProfileFormEvent>;
}

/// @nodoc
class _$ProfileFormEventCopyWithImpl<$Res, $Val extends ProfileFormEvent>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<AppUser> initialUserOption});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialUserOption = null,
  }) {
    return _then(_$InitializedImpl(
      null == initialUserOption
          ? _value.initialUserOption
          : initialUserOption // ignore: cast_nullable_to_non_nullable
              as Option<AppUser>,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl(this.initialUserOption);

  @override
  final Option<AppUser> initialUserOption;

  @override
  String toString() {
    return 'ProfileFormEvent.initialized(initialUserOption: $initialUserOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.initialUserOption, initialUserOption) ||
                other.initialUserOption == initialUserOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialUserOption);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return initialized(initialUserOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return initialized?.call(initialUserOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUserOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProfileFormEvent {
  const factory _Initialized(final Option<AppUser> initialUserOption) =
      _$InitializedImpl;

  Option<AppUser> get initialUserOption;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChangedImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ProfileFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ProfileFormEvent {
  const factory _NameChanged(final String nameStr) = _$NameChangedImpl;

  String get nameStr;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ProfileFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ProfileFormEvent {
  const factory _EmailChanged(final String emailStr) = _$EmailChangedImpl;

  String get emailStr;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionChangedImplCopyWith<$Res> {
  factory _$$DescriptionChangedImplCopyWith(_$DescriptionChangedImpl value,
          $Res Function(_$DescriptionChangedImpl) then) =
      __$$DescriptionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$DescriptionChangedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$DescriptionChangedImpl>
    implements _$$DescriptionChangedImplCopyWith<$Res> {
  __$$DescriptionChangedImplCopyWithImpl(_$DescriptionChangedImpl _value,
      $Res Function(_$DescriptionChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionStr = null,
  }) {
    return _then(_$DescriptionChangedImpl(
      null == descriptionStr
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescriptionChangedImpl implements _DescriptionChanged {
  const _$DescriptionChangedImpl(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'ProfileFormEvent.descriptionChanged(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionChangedImpl &&
            (identical(other.descriptionStr, descriptionStr) ||
                other.descriptionStr == descriptionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionStr);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      __$$DescriptionChangedImplCopyWithImpl<_$DescriptionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return descriptionChanged(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return descriptionChanged?.call(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ProfileFormEvent {
  const factory _DescriptionChanged(final String descriptionStr) =
      _$DescriptionChangedImpl;

  String get descriptionStr;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescriptionChangedImplCopyWith<_$DescriptionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfilePicChangedImplCopyWith<$Res> {
  factory _$$ProfilePicChangedImplCopyWith(_$ProfilePicChangedImpl value,
          $Res Function(_$ProfilePicChangedImpl) then) =
      __$$ProfilePicChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$ProfilePicChangedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$ProfilePicChangedImpl>
    implements _$$ProfilePicChangedImplCopyWith<$Res> {
  __$$ProfilePicChangedImplCopyWithImpl(_$ProfilePicChangedImpl _value,
      $Res Function(_$ProfilePicChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ProfilePicChangedImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ProfilePicChangedImpl implements _ProfilePicChanged {
  const _$ProfilePicChangedImpl(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'ProfileFormEvent.profilePicChanged(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePicChangedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePicChangedImplCopyWith<_$ProfilePicChangedImpl> get copyWith =>
      __$$ProfilePicChangedImplCopyWithImpl<_$ProfilePicChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return profilePicChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return profilePicChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (profilePicChanged != null) {
      return profilePicChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return profilePicChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return profilePicChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (profilePicChanged != null) {
      return profilePicChanged(this);
    }
    return orElse();
  }
}

abstract class _ProfilePicChanged implements ProfileFormEvent {
  const factory _ProfilePicChanged(final File image) = _$ProfilePicChangedImpl;

  File get image;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePicChangedImplCopyWith<_$ProfilePicChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl();

  @override
  String toString() {
    return 'ProfileFormEvent.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProfileFormEvent {
  const factory _Saved() = _$SavedImpl;
}

/// @nodoc
abstract class _$$ThirdPartySignInSavedImplCopyWith<$Res> {
  factory _$$ThirdPartySignInSavedImplCopyWith(
          _$ThirdPartySignInSavedImpl value,
          $Res Function(_$ThirdPartySignInSavedImpl) then) =
      __$$ThirdPartySignInSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$ThirdPartySignInSavedImplCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$ThirdPartySignInSavedImpl>
    implements _$$ThirdPartySignInSavedImplCopyWith<$Res> {
  __$$ThirdPartySignInSavedImplCopyWithImpl(_$ThirdPartySignInSavedImpl _value,
      $Res Function(_$ThirdPartySignInSavedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$ThirdPartySignInSavedImpl(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$ThirdPartySignInSavedImpl implements _ThirdPartySignInSaved {
  const _$ThirdPartySignInSavedImpl(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'ProfileFormEvent.thirdPartySignInSaved(appUser: $appUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartySignInSavedImpl &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdPartySignInSavedImplCopyWith<_$ThirdPartySignInSavedImpl>
      get copyWith => __$$ThirdPartySignInSavedImplCopyWithImpl<
          _$ThirdPartySignInSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<AppUser> initialUserOption) initialized,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String descriptionStr) descriptionChanged,
    required TResult Function(File image) profilePicChanged,
    required TResult Function() saved,
    required TResult Function(AppUser appUser) thirdPartySignInSaved,
  }) {
    return thirdPartySignInSaved(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<AppUser> initialUserOption)? initialized,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String descriptionStr)? descriptionChanged,
    TResult? Function(File image)? profilePicChanged,
    TResult? Function()? saved,
    TResult? Function(AppUser appUser)? thirdPartySignInSaved,
  }) {
    return thirdPartySignInSaved?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<AppUser> initialUserOption)? initialized,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String descriptionStr)? descriptionChanged,
    TResult Function(File image)? profilePicChanged,
    TResult Function()? saved,
    TResult Function(AppUser appUser)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (thirdPartySignInSaved != null) {
      return thirdPartySignInSaved(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_ProfilePicChanged value) profilePicChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ThirdPartySignInSaved value)
        thirdPartySignInSaved,
  }) {
    return thirdPartySignInSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_DescriptionChanged value)? descriptionChanged,
    TResult? Function(_ProfilePicChanged value)? profilePicChanged,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
  }) {
    return thirdPartySignInSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_ProfilePicChanged value)? profilePicChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ThirdPartySignInSaved value)? thirdPartySignInSaved,
    required TResult orElse(),
  }) {
    if (thirdPartySignInSaved != null) {
      return thirdPartySignInSaved(this);
    }
    return orElse();
  }
}

abstract class _ThirdPartySignInSaved implements ProfileFormEvent {
  const factory _ThirdPartySignInSaved(final AppUser appUser) =
      _$ThirdPartySignInSavedImpl;

  AppUser get appUser;

  /// Create a copy of ProfileFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThirdPartySignInSavedImplCopyWith<_$ThirdPartySignInSavedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileFormState {
  AppUser get appUser => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<ProfileFailures, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<ProfileFailures, String>>
      get imageUploadFaiureOrSuccessOption =>
          throw _privateConstructorUsedError;

  /// Create a copy of ProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res, ProfileFormState>;
  @useResult
  $Res call(
      {AppUser appUser,
      bool isEditing,
      bool isSaving,
      bool showErrorMessages,
      Option<Either<ProfileFailures, Unit>> saveFailureOrSuccessOption,
      Option<Either<ProfileFailures, String>>
          imageUploadFaiureOrSuccessOption});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res, $Val extends ProfileFormState>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? showErrorMessages = null,
    Object? saveFailureOrSuccessOption = null,
    Object? imageUploadFaiureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailures, Unit>>,
      imageUploadFaiureOrSuccessOption: null == imageUploadFaiureOrSuccessOption
          ? _value.imageUploadFaiureOrSuccessOption
          : imageUploadFaiureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailures, String>>,
    ) as $Val);
  }

  /// Create a copy of ProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileFormStateImplCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$$ProfileFormStateImplCopyWith(_$ProfileFormStateImpl value,
          $Res Function(_$ProfileFormStateImpl) then) =
      __$$ProfileFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser appUser,
      bool isEditing,
      bool isSaving,
      bool showErrorMessages,
      Option<Either<ProfileFailures, Unit>> saveFailureOrSuccessOption,
      Option<Either<ProfileFailures, String>>
          imageUploadFaiureOrSuccessOption});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$ProfileFormStateImplCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res, _$ProfileFormStateImpl>
    implements _$$ProfileFormStateImplCopyWith<$Res> {
  __$$ProfileFormStateImplCopyWithImpl(_$ProfileFormStateImpl _value,
      $Res Function(_$ProfileFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? isEditing = null,
    Object? isSaving = null,
    Object? showErrorMessages = null,
    Object? saveFailureOrSuccessOption = null,
    Object? imageUploadFaiureOrSuccessOption = null,
  }) {
    return _then(_$ProfileFormStateImpl(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: null == saveFailureOrSuccessOption
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailures, Unit>>,
      imageUploadFaiureOrSuccessOption: null == imageUploadFaiureOrSuccessOption
          ? _value.imageUploadFaiureOrSuccessOption
          : imageUploadFaiureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProfileFailures, String>>,
    ));
  }
}

/// @nodoc

class _$ProfileFormStateImpl implements _ProfileFormState {
  const _$ProfileFormStateImpl(
      {required this.appUser,
      required this.isEditing,
      required this.isSaving,
      required this.showErrorMessages,
      required this.saveFailureOrSuccessOption,
      required this.imageUploadFaiureOrSuccessOption});

  @override
  final AppUser appUser;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ProfileFailures, Unit>> saveFailureOrSuccessOption;
  @override
  final Option<Either<ProfileFailures, String>>
      imageUploadFaiureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileFormState(appUser: $appUser, isEditing: $isEditing, isSaving: $isSaving, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, imageUploadFaiureOrSuccessOption: $imageUploadFaiureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFormStateImpl &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption) &&
            (identical(other.imageUploadFaiureOrSuccessOption,
                    imageUploadFaiureOrSuccessOption) ||
                other.imageUploadFaiureOrSuccessOption ==
                    imageUploadFaiureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appUser,
      isEditing,
      isSaving,
      showErrorMessages,
      saveFailureOrSuccessOption,
      imageUploadFaiureOrSuccessOption);

  /// Create a copy of ProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFormStateImplCopyWith<_$ProfileFormStateImpl> get copyWith =>
      __$$ProfileFormStateImplCopyWithImpl<_$ProfileFormStateImpl>(
          this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {required final AppUser appUser,
      required final bool isEditing,
      required final bool isSaving,
      required final bool showErrorMessages,
      required final Option<Either<ProfileFailures, Unit>>
          saveFailureOrSuccessOption,
      required final Option<Either<ProfileFailures, String>>
          imageUploadFaiureOrSuccessOption}) = _$ProfileFormStateImpl;

  @override
  AppUser get appUser;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<ProfileFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  Option<Either<ProfileFailures, String>> get imageUploadFaiureOrSuccessOption;

  /// Create a copy of ProfileFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileFormStateImplCopyWith<_$ProfileFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
