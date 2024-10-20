import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_college/domain/profile/app_user.dart';
import 'package:flutter_college/domain/profile/i_app_user_repository.dart';
import 'package:flutter_college/domain/profile/profile_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_watcher_bloc.freezed.dart';
part 'profile_watcher_event.dart';
part 'profile_watcher_state.dart';

@injectable
class ProfileWatcherBloc
    extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  final IAppUserRepository _repository;
  StreamSubscription? _subs;

  ProfileWatcherBloc(
    this._repository,
  ) : super(const ProfileWatcherState.initial()) {
    on<ProfileWatcherEvent>(_onEvents);
  }

  Future<void> _onEvents(
    ProfileWatcherEvent event,
    Emitter<ProfileWatcherState> emit,
  ) {
    return event.map(
      watchStarted: (e) async {
        emit(const ProfileWatcherState.loading());
        await _subs?.cancel();
        _subs = _repository.watchAppUser().listen((event) {
          add(ProfileWatcherEvent.profileReceived(event));
        });
      },
      profileReceived: (e) async {
        e.failureOrUser.fold(
          (l) {
            emit(ProfileWatcherState.failure(l));
          },
          (r) {
            emit(ProfileWatcherState.loaded(r));
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    _subs?.cancel();
    return super.close();
  }
}
