import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_college/domain/core/failures.dart';
import 'package:flutter_college/domain/core/value_objects.dart';
import 'package:flutter_college/domain/core/value_validators.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    final validation = validatePassword(input);

    validation.fold(
      (l) => debugPrint('NGB--->Password validation failed: $l'),
      (r) => debugPrint('NGB--->Password validation successful: $r'),
    );

    return Password._(validation);
  }

  const Password._(this.value);
}
