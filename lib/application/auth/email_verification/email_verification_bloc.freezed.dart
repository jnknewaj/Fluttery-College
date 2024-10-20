// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sentVerificationEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sentVerificationEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sentVerificationEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SentVerificationEmail value)
        sentVerificationEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentVerificationEmail value)? sentVerificationEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentVerificationEmail value)? sentVerificationEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationEventCopyWith<$Res> {
  factory $EmailVerificationEventCopyWith(EmailVerificationEvent value,
          $Res Function(EmailVerificationEvent) then) =
      _$EmailVerificationEventCopyWithImpl<$Res, EmailVerificationEvent>;
}

/// @nodoc
class _$EmailVerificationEventCopyWithImpl<$Res,
        $Val extends EmailVerificationEvent>
    implements $EmailVerificationEventCopyWith<$Res> {
  _$EmailVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SentVerificationEmailImplCopyWith<$Res> {
  factory _$$SentVerificationEmailImplCopyWith(
          _$SentVerificationEmailImpl value,
          $Res Function(_$SentVerificationEmailImpl) then) =
      __$$SentVerificationEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentVerificationEmailImplCopyWithImpl<$Res>
    extends _$EmailVerificationEventCopyWithImpl<$Res,
        _$SentVerificationEmailImpl>
    implements _$$SentVerificationEmailImplCopyWith<$Res> {
  __$$SentVerificationEmailImplCopyWithImpl(_$SentVerificationEmailImpl _value,
      $Res Function(_$SentVerificationEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SentVerificationEmailImpl implements _SentVerificationEmail {
  const _$SentVerificationEmailImpl();

  @override
  String toString() {
    return 'EmailVerificationEvent.sentVerificationEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentVerificationEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sentVerificationEmail,
  }) {
    return sentVerificationEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sentVerificationEmail,
  }) {
    return sentVerificationEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sentVerificationEmail,
    required TResult orElse(),
  }) {
    if (sentVerificationEmail != null) {
      return sentVerificationEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SentVerificationEmail value)
        sentVerificationEmail,
  }) {
    return sentVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentVerificationEmail value)? sentVerificationEmail,
  }) {
    return sentVerificationEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentVerificationEmail value)? sentVerificationEmail,
    required TResult orElse(),
  }) {
    if (sentVerificationEmail != null) {
      return sentVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class _SentVerificationEmail implements EmailVerificationEvent {
  const factory _SentVerificationEmail() = _$SentVerificationEmailImpl;
}

/// @nodoc
mixin _$EmailVerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingLink,
    required TResult Function() linkSent,
    required TResult Function() isVerified,
    required TResult Function(AuthFailures failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingLink,
    TResult? Function()? linkSent,
    TResult? Function()? isVerified,
    TResult? Function(AuthFailures failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingLink,
    TResult Function()? linkSent,
    TResult Function()? isVerified,
    TResult Function(AuthFailures failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingLink value) sendingLink,
    required TResult Function(_LinkSent value) linkSent,
    required TResult Function(_IsVerified value) isVerified,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingLink value)? sendingLink,
    TResult? Function(_LinkSent value)? linkSent,
    TResult? Function(_IsVerified value)? isVerified,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingLink value)? sendingLink,
    TResult Function(_LinkSent value)? linkSent,
    TResult Function(_IsVerified value)? isVerified,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res,
        $Val extends EmailVerificationState>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EmailVerificationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingLink,
    required TResult Function() linkSent,
    required TResult Function() isVerified,
    required TResult Function(AuthFailures failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingLink,
    TResult? Function()? linkSent,
    TResult? Function()? isVerified,
    TResult? Function(AuthFailures failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingLink,
    TResult Function()? linkSent,
    TResult Function()? isVerified,
    TResult Function(AuthFailures failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingLink value) sendingLink,
    required TResult Function(_LinkSent value) linkSent,
    required TResult Function(_IsVerified value) isVerified,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingLink value)? sendingLink,
    TResult? Function(_LinkSent value)? linkSent,
    TResult? Function(_IsVerified value)? isVerified,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingLink value)? sendingLink,
    TResult Function(_LinkSent value)? linkSent,
    TResult Function(_IsVerified value)? isVerified,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmailVerificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingLinkImplCopyWith<$Res> {
  factory _$$SendingLinkImplCopyWith(
          _$SendingLinkImpl value, $Res Function(_$SendingLinkImpl) then) =
      __$$SendingLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingLinkImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$SendingLinkImpl>
    implements _$$SendingLinkImplCopyWith<$Res> {
  __$$SendingLinkImplCopyWithImpl(
      _$SendingLinkImpl _value, $Res Function(_$SendingLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingLinkImpl implements _SendingLink {
  const _$SendingLinkImpl();

  @override
  String toString() {
    return 'EmailVerificationState.sendingLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingLink,
    required TResult Function() linkSent,
    required TResult Function() isVerified,
    required TResult Function(AuthFailures failure) failed,
  }) {
    return sendingLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingLink,
    TResult? Function()? linkSent,
    TResult? Function()? isVerified,
    TResult? Function(AuthFailures failure)? failed,
  }) {
    return sendingLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingLink,
    TResult Function()? linkSent,
    TResult Function()? isVerified,
    TResult Function(AuthFailures failure)? failed,
    required TResult orElse(),
  }) {
    if (sendingLink != null) {
      return sendingLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingLink value) sendingLink,
    required TResult Function(_LinkSent value) linkSent,
    required TResult Function(_IsVerified value) isVerified,
    required TResult Function(_Failed value) failed,
  }) {
    return sendingLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingLink value)? sendingLink,
    TResult? Function(_LinkSent value)? linkSent,
    TResult? Function(_IsVerified value)? isVerified,
    TResult? Function(_Failed value)? failed,
  }) {
    return sendingLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingLink value)? sendingLink,
    TResult Function(_LinkSent value)? linkSent,
    TResult Function(_IsVerified value)? isVerified,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (sendingLink != null) {
      return sendingLink(this);
    }
    return orElse();
  }
}

abstract class _SendingLink implements EmailVerificationState {
  const factory _SendingLink() = _$SendingLinkImpl;
}

/// @nodoc
abstract class _$$LinkSentImplCopyWith<$Res> {
  factory _$$LinkSentImplCopyWith(
          _$LinkSentImpl value, $Res Function(_$LinkSentImpl) then) =
      __$$LinkSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LinkSentImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$LinkSentImpl>
    implements _$$LinkSentImplCopyWith<$Res> {
  __$$LinkSentImplCopyWithImpl(
      _$LinkSentImpl _value, $Res Function(_$LinkSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LinkSentImpl implements _LinkSent {
  const _$LinkSentImpl();

  @override
  String toString() {
    return 'EmailVerificationState.linkSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LinkSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingLink,
    required TResult Function() linkSent,
    required TResult Function() isVerified,
    required TResult Function(AuthFailures failure) failed,
  }) {
    return linkSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingLink,
    TResult? Function()? linkSent,
    TResult? Function()? isVerified,
    TResult? Function(AuthFailures failure)? failed,
  }) {
    return linkSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingLink,
    TResult Function()? linkSent,
    TResult Function()? isVerified,
    TResult Function(AuthFailures failure)? failed,
    required TResult orElse(),
  }) {
    if (linkSent != null) {
      return linkSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingLink value) sendingLink,
    required TResult Function(_LinkSent value) linkSent,
    required TResult Function(_IsVerified value) isVerified,
    required TResult Function(_Failed value) failed,
  }) {
    return linkSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingLink value)? sendingLink,
    TResult? Function(_LinkSent value)? linkSent,
    TResult? Function(_IsVerified value)? isVerified,
    TResult? Function(_Failed value)? failed,
  }) {
    return linkSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingLink value)? sendingLink,
    TResult Function(_LinkSent value)? linkSent,
    TResult Function(_IsVerified value)? isVerified,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (linkSent != null) {
      return linkSent(this);
    }
    return orElse();
  }
}

abstract class _LinkSent implements EmailVerificationState {
  const factory _LinkSent() = _$LinkSentImpl;
}

/// @nodoc
abstract class _$$IsVerifiedImplCopyWith<$Res> {
  factory _$$IsVerifiedImplCopyWith(
          _$IsVerifiedImpl value, $Res Function(_$IsVerifiedImpl) then) =
      __$$IsVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsVerifiedImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$IsVerifiedImpl>
    implements _$$IsVerifiedImplCopyWith<$Res> {
  __$$IsVerifiedImplCopyWithImpl(
      _$IsVerifiedImpl _value, $Res Function(_$IsVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsVerifiedImpl implements _IsVerified {
  const _$IsVerifiedImpl();

  @override
  String toString() {
    return 'EmailVerificationState.isVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingLink,
    required TResult Function() linkSent,
    required TResult Function() isVerified,
    required TResult Function(AuthFailures failure) failed,
  }) {
    return isVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingLink,
    TResult? Function()? linkSent,
    TResult? Function()? isVerified,
    TResult? Function(AuthFailures failure)? failed,
  }) {
    return isVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingLink,
    TResult Function()? linkSent,
    TResult Function()? isVerified,
    TResult Function(AuthFailures failure)? failed,
    required TResult orElse(),
  }) {
    if (isVerified != null) {
      return isVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingLink value) sendingLink,
    required TResult Function(_LinkSent value) linkSent,
    required TResult Function(_IsVerified value) isVerified,
    required TResult Function(_Failed value) failed,
  }) {
    return isVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingLink value)? sendingLink,
    TResult? Function(_LinkSent value)? linkSent,
    TResult? Function(_IsVerified value)? isVerified,
    TResult? Function(_Failed value)? failed,
  }) {
    return isVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingLink value)? sendingLink,
    TResult Function(_LinkSent value)? linkSent,
    TResult Function(_IsVerified value)? isVerified,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (isVerified != null) {
      return isVerified(this);
    }
    return orElse();
  }
}

abstract class _IsVerified implements EmailVerificationState {
  const factory _IsVerified() = _$IsVerifiedImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailures failure});

  $AuthFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailures,
    ));
  }

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthFailuresCopyWith<$Res> get failure {
    return $AuthFailuresCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.failure);

  @override
  final AuthFailures failure;

  @override
  String toString() {
    return 'EmailVerificationState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingLink,
    required TResult Function() linkSent,
    required TResult Function() isVerified,
    required TResult Function(AuthFailures failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingLink,
    TResult? Function()? linkSent,
    TResult? Function()? isVerified,
    TResult? Function(AuthFailures failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingLink,
    TResult Function()? linkSent,
    TResult Function()? isVerified,
    TResult Function(AuthFailures failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingLink value) sendingLink,
    required TResult Function(_LinkSent value) linkSent,
    required TResult Function(_IsVerified value) isVerified,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingLink value)? sendingLink,
    TResult? Function(_LinkSent value)? linkSent,
    TResult? Function(_IsVerified value)? isVerified,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingLink value)? sendingLink,
    TResult Function(_LinkSent value)? linkSent,
    TResult Function(_IsVerified value)? isVerified,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements EmailVerificationState {
  const factory _Failed(final AuthFailures failure) = _$FailedImpl;

  AuthFailures get failure;

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
