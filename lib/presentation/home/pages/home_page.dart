import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_college/application/auth/auth_check/auth_check_bloc.dart';
import 'package:flutter_college/injection.dart';
import 'package:flutter_college/presentation/core/pages/auth_window.dart';
import 'package:flutter_college/utils/app_utils/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCheckBloc>(),
      child: const _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCheckBloc, AuthCheckState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) {
            debugPrint("Loggedout");
            navigateAndRemoveUntil(context, const AuthWindow());
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                context
                    .read<AuthCheckBloc>()
                    .add(const AuthCheckEvent.signOutPressed());
              },
              icon: const Icon(Icons.logout_outlined),
            )
          ],
        ),
        body: Container(
          color: Colors.cyan,
          child: const Center(
            child: Text('HOME'),
          ),
        ),
      ),
    );
  }
}
