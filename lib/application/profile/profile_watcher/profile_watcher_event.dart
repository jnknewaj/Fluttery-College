part of 'profile_watcher_bloc.dart';

@freezed
abstract class ProfileWatcherEvent with _$ProfileWatcherEvent {
  const factory ProfileWatcherEvent.watchStarted() = _WatchStarted;
  const factory ProfileWatcherEvent.profileReceived(
      Either<ProfileFailures, AppUser> failureOrUser) = _ProfileReceived;
}
