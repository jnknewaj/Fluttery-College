import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_college/domain/auth/i_auth_facade.dart';
import 'package:flutter_college/domain/core/errors.dart';
import 'package:flutter_college/injection.dart';
import 'package:flutter_college/res/strings/const_strings.dart';

extension FirebaseStorageX on FirebaseStorage {
  /// throws [UserNotAuthenticatedError] for unauthenticated user
  Future<Reference> userProfilePicsReference() async {
    final userIdOption = await getIt<IAuthFacade>().getSignedInUserId();
    final userId = userIdOption.getOrElse(() => throw NotAuthenticatedError());
    final dpStorageReference = FirebaseStorage.instance
        .ref()
        .child('${ConstStrings.users}/$userId/${ConstStrings.profilePics}/pp');
    return dpStorageReference;
  }
}
