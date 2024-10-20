import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_college/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_college/application/profile/profile_form/profile_form_bloc.dart';
import 'package:flutter_college/injection.dart';
import 'package:flutter_college/presentation/auth/pages/forgot_password_page.dart';
import 'package:flutter_college/presentation/auth/widgets/auth_widgets.dart';
import 'package:flutter_college/presentation/core/pages/auth_window.dart';
import 'package:flutter_college/presentation/core/widgets/simple_button.dart';
import 'package:flutter_college/utils/app_utils/router.dart';
import 'package:flutter_college/utils/string_utils/string_utils.dart';
import 'package:flutter_college/utils/ui_utils/ui_utils.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<ProfileFormBloc>(),
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
        // This bloc is needed here for just one case
        // If new user register from this page through 3rd party
        // Then a new profile is supposed to be created
        BlocListener<ProfileFormBloc, ProfileFormState>(
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (f) {
                    final msg = profileFailuresToString(f);
                    showSnackbar(context, msg);
                  },
                  (s) {
                    // successfully created profile for the 3rd party registered user
                    showSnackbar(context, "Profile created sucessfully");
                    navigateAndRemoveUntil(context, const AuthWindow());
                  },
                );
              },
            );
          },
        ),
        BlocListener<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            // listening email-pass signin
            state.authFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (f) {
                    final text = authFailuresToString(f);
                    showSnackbar(context, text);
                  },
                  // successful signin
                  (_) {
                    navigateAndRemoveUntil(context, const AuthWindow());
                  },
                );
              },
            );
            // listening 3rd party signin
            state.thirdPartyAuthFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (f) {
                    final text = authFailuresToString(f);
                    showSnackbar(context, text);
                  },
                  (unitOrUser) {
                    unitOrUser.fold(
                      // old user
                      (_) {
                        navigateAndRemoveUntil(context, const AuthWindow());
                      },
                      // new user
                      (appUser) {
                        context.read<ProfileFormBloc>().add(
                            ProfileFormEvent.thirdPartySignInSaved(appUser));
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ],
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: const _SignInUI(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SignInUI extends StatelessWidget {
  const _SignInUI();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: Alignment.center,
            child: const Text(
              'Flutter College',
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
                fontSize: 20,
                wordSpacing: 2,
                letterSpacing: 3,
              ),
            ),
          ),
          const AuthEmailField(authContext: AuthContext.signIn),
          const AuthPasswordField(),
          Container(
            margin: const EdgeInsets.only(right: 18),
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                navigateTo(context, const ForgotPasswordPage());
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          BlocBuilder<SignInFormBloc, SignInFormState>(
            builder: (context, state) {
              return SimpleButton(
                width: 0.9,
                text: 'Sign In',
                hasChild: state.isSubmitting,
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent
                      .signInWithEmailAndPasswordPressed());
                },
              );
            },
          ),
          const Socials(),
          ElevatedButton(
            onPressed: () {
              pop(context);
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
