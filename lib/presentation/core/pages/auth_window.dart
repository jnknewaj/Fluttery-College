import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_college/application/auth/auth_check/auth_check_bloc.dart';
import 'package:flutter_college/injection.dart';
import 'package:flutter_college/presentation/auth/pages/welcome_page.dart';
import 'package:flutter_college/presentation/core/widgets/splash_screen.dart';
import 'package:flutter_college/presentation/home/pages/home_navigation.dart';
import 'package:flutter_college/utils/app_utils/router.dart';

class AuthWindow extends StatelessWidget {
  const AuthWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthCheckBloc>()..add(const AuthCheckEvent.started()),
      child: BlocBuilder<AuthCheckBloc, AuthCheckState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SplashScreen(),
            authenticated: (_) {
              ///This ensures that context.go('/home') only runs after the
              ///current widget tree has finished building, preventing potential
              ///issues like trying to navigate while the widget is still being
              ///built.
              WidgetsBinding.instance.addPostFrameCallback((_) {
                /// can’t use context.go('/home') directly inside the BlocBuilder
                /// Cz  `BlocBuilder()` is called multiple times durring
                /// widget's lifecycle
                navigateAndRemoveUntil(context, const HomeNavigation());
              });
              return Container();
            },
            unauthenticated: (_) => const WelcomePage(),
          );
        },
      ),
    );
  }
}
