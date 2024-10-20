import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_college/application/auth/ForgotPassword/forgot_password_bloc.dart';
import 'package:flutter_college/injection.dart';
import 'package:flutter_college/presentation/core/pages/auth_window.dart';
import 'package:flutter_college/presentation/core/widgets/simple_button.dart';
import 'package:flutter_college/utils/app_utils/router.dart';
import 'package:flutter_college/utils/string_utils/string_utils.dart';
import 'package:flutter_college/utils/ui_utils/ui_utils.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ForgotPasswordBloc>(),
        ),
      ],
      child: const _Handler(),
    );
  }
}

class _Handler extends StatelessWidget {
  const _Handler();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (context, state) {
            state.failureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (l) {
                    final text = authFailuresToString(l);
                    showSnackbar(context, text);
                  },
                  (r) {
                    navigateTo(context, const ForgotPassStatus());
                  },
                );
              },
            );
          },
        ),
      ],
      child: const _UI(),
    );
  }
}

class _UI extends StatelessWidget {
  const _UI();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Please enter your email to reset the password.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                    onChanged: (val) {
                      context
                          .read<ForgotPasswordBloc>()
                          .add(ForgotPasswordEvent.emailChanged(val));
                    },
                    validator: (val) {
                      return context
                          .read<ForgotPasswordBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (_) => 'Invalid Email',
                            (_) => null,
                          );
                    },
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      hintText: 'Email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                ),
                BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
                  builder: (context, state) {
                    return SimpleButton(
                      width: 1,
                      text: 'Reset Password',
                      onPressed: () {
                        context
                            .read<ForgotPasswordBloc>()
                            .add(const ForgotPasswordEvent.sentLink());
                      },
                      hasChild: state.isSubmitting,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassStatus extends StatelessWidget {
  const ForgotPassStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'If an account with that email exists, a password reset link has been sent. Please check your email.'),
            const SizedBox(height: 10),
            SimpleButton(
              text: 'Ok',
              onPressed: () {
                navigateAndRemoveUntil(context, const AuthWindow());
              },
            ),
          ],
        ),
      ),
    );
  }
}
