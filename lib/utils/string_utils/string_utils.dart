import 'package:flutter_college/domain/auth/auth_failures.dart';
import 'package:flutter_college/domain/profile/profile_failures.dart';

String authFailuresToString(AuthFailures f) {
  final msg = f.map(
    cancelledByUser: (_) => 'Cancelled by user',
    emailAlreadyInUse: (_) => 'The email is already in use',
    invalidEmailPasswordCombination: (_) =>
        'Invalid email-password combination',
    userDisabled: (_) => 'User is disabled, contact officials.',
    operationNotAllowed: (_) =>
        'This operation is not allowed. Contact officials.',
    expiredActionCode: (_) => 'Expired action code. Contact officials.',
    invalidVerificationCode: (_) => ' Invalid verification code',
    invalidVerificationId: (_) => 'Invalid verification id',
    tooManyRequests: (_) => 'Too many requests, try again later.',
    networkRequestFailed: (_) => 'Network request failed.',
    quotaExceeded: (_) => 'Quota exceeded. Contact officials.',
    emailAlreadyVerified: (_) => 'The email is already verified. Go ahead.',
    userNotFound: (_) => 'User not found.',
    invalidEmail: (_) => 'Invalid email',
    unknownError: (e) => 'Unknown error : ${e.message}, code : ${e.errorCode}',
  );
  return msg;
}

String profileFailuresToString(ProfileFailures f) {
  final msg = f.map(
    insufficientPermission: (_) => 'Insufficient permission',
    unknownFailure: (s) => 'Unknown error : ${s.toString()}',
  );
  return msg;
}
