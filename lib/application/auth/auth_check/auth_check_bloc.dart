import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_college/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_check_event.dart';
part 'auth_check_state.dart';
part 'auth_check_bloc.freezed.dart';

@injectable
class AuthCheckBloc extends Bloc<AuthCheckEvent, AuthCheckState> {
  final IAuthFacade _authFacade;

  AuthCheckBloc(this._authFacade) : super(const AuthCheckState.initial()) {
    on<AuthCheckEvent>(_onEvent);
  }

  Future<void> _onEvent(
    AuthCheckEvent event,
    Emitter<AuthCheckState> emit,
  ) async {
    await event.map(
      started: (e) async {
        final userEmailOption = _authFacade.getSignedInUserEmail();
        emit(userEmailOption.fold(
          () => const AuthCheckState.unauthenticated(),
          (_) => const AuthCheckState.authenticated(),
        ));
      },
      signOutPressed: (e) async {
        await _authFacade.signOut();
        emit(const AuthCheckState.unauthenticated());
      },
    );
  }
}
