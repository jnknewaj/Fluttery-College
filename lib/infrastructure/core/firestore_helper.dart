import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_college/domain/core/errors.dart';
import 'package:flutter_college/injection.dart';

import '../../domain/auth/i_auth_facade.dart';

extension FirestoreX on FirebaseFirestore {
  /// throws [UserNotAuthenticatedError] for unauthenticated user
  Future<DocumentReference> userDocument() async {
    final userIdOption = await getIt<IAuthFacade>().getSignedInUserId();
    final userId = userIdOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(userId);
  }
}
