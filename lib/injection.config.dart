// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;
import 'package:uuid/uuid.dart' as _i706;

import 'application/auth/auth_check/auth_check_bloc.dart' as _i700;
import 'application/auth/email_verification/email_verification_bloc.dart'
    as _i523;
import 'application/auth/ForgotPassword/forgot_password_bloc.dart' as _i602;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i966;
import 'application/profile/profile_form/profile_form_bloc.dart' as _i9;
import 'application/profile/profile_watcher/profile_watcher_bloc.dart' as _i203;
import 'domain/auth/i_auth_facade.dart' as _i878;
import 'domain/profile/i_app_user_repository.dart' as _i436;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i1019;
import 'infrastructure/core/firebase_injectable_module.dart' as _i462;
import 'infrastructure/core/third_party_packages_injectable_module.dart'
    as _i920;
import 'infrastructure/profile/app_user_repository.dart' as _i917;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    final thirdPartyPackagesInjectableModule =
        _$ThirdPartyPackagesInjectableModule();
    gh.lazySingleton<_i59.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i457.FirebaseStorage>(
        () => firebaseInjectableModule.firebaseStorage);
    gh.lazySingleton<_i116.GoogleSignIn>(
        () => firebaseInjectableModule.googeSignIn);
    gh.lazySingleton<_i706.Uuid>(() => thirdPartyPackagesInjectableModule.uuid);
    gh.lazySingleton<_i878.IAuthFacade>(() => _i1019.FirebaseAuthFacade(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
          gh<_i116.GoogleSignIn>(),
        ));
    gh.factory<_i966.SignInFormBloc>(
        () => _i966.SignInFormBloc(gh<_i878.IAuthFacade>()));
    gh.factory<_i700.AuthCheckBloc>(
        () => _i700.AuthCheckBloc(gh<_i878.IAuthFacade>()));
    gh.factory<_i602.ForgotPasswordBloc>(
        () => _i602.ForgotPasswordBloc(gh<_i878.IAuthFacade>()));
    gh.factory<_i523.EmailVerificationBloc>(
        () => _i523.EmailVerificationBloc(gh<_i878.IAuthFacade>()));
    gh.lazySingleton<_i436.IAppUserRepository>(() => _i917.AppUserRepository(
          gh<_i974.FirebaseFirestore>(),
          gh<_i457.FirebaseStorage>(),
          gh<_i706.Uuid>(),
        ));
    gh.factory<_i203.ProfileWatcherBloc>(
        () => _i203.ProfileWatcherBloc(gh<_i436.IAppUserRepository>()));
    gh.factory<_i9.ProfileFormBloc>(
        () => _i9.ProfileFormBloc(gh<_i436.IAppUserRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i462.FirebaseInjectableModule {}

class _$ThirdPartyPackagesInjectableModule
    extends _i920.ThirdPartyPackagesInjectableModule {}
