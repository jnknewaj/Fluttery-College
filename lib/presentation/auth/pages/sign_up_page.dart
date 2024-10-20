import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_college/application/auth/email_verification/email_verification_bloc.dart';
import 'package:flutter_college/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_college/application/profile/profile_form/profile_form_bloc.dart';
import 'package:flutter_college/injection.dart';
import 'package:flutter_college/presentation/auth/pages/email_verification_status_window.dart';
import 'package:flutter_college/presentation/auth/widgets/auth_widgets.dart';
import 'package:flutter_college/presentation/core/pages/auth_window.dart';
import 'package:flutter_college/presentation/core/widgets/loading.dart';
import 'package:flutter_college/presentation/core/widgets/simple_button.dart';
import 'package:flutter_college/utils/app_utils/router.dart';
import 'package:flutter_college/utils/string_utils/string_utils.dart';
import 'package:flutter_college/utils/ui_utils/ui_utils.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
        BlocProvider(
          create: (context) => getIt<EmailVerificationBloc>(),
        ),
      ],
      child: const SafeArea(child: SignUpForm()),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
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
                    // successfully created profile for the registered user
                    showSnackbar(context, "Profile created sucessfully");
                    context.read<EmailVerificationBloc>().add(
                        const EmailVerificationEvent.sentVerificationEmail());
                  },
                );
              },
            );
          },
        ),
        BlocListener<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (some) {
                some.fold(
                  (f) {
                    final msg = authFailuresToString(f);
                    showSnackbar(context, msg);
                  },
                  (_) {
                    // user registration successful
                    showSnackbar(context,
                        'Successfully registered user, wait a while...');
                    context
                        .read<ProfileFormBloc>()
                        .add(const ProfileFormEvent.saved());
                  },
                );
              },
            );

            state.thirdPartyAuthFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    final msg = authFailuresToString(failure);
                    showSnackbar(context, msg);
                  },
                  (unitOrUser) {
                    unitOrUser.fold(
                      // old user
                      (_) async {
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
        BlocListener<EmailVerificationBloc, EmailVerificationState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              sendingLink: (_) {
                showSnackbar(context, 'Please wait...');
              },
              linkSent: (_) {
                navigateAndRemoveUntil(
                    context, const EmailVerificationStatusWindow());
              },
              isVerified: (_) {
                navigateAndRemoveUntil(context, const AuthWindow());
              },
              failed: (f) {
                final msg = authFailuresToString(f.failure);
                showSnackbar(context, msg);
              },
            );
          },
        )
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
                  child: const _SignUpUI(),
                ),
                BlocBuilder<SignInFormBloc, SignInFormState>(
                  builder: (context, state) {
                    return state.isSubmitting
                        ? const Center(child: Loading())
                        : const SizedBox();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SignUpUI extends StatelessWidget {
  const _SignUpUI();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Column(
        children: [
          const AuthNameField(),
          const AuthEmailField(authContext: AuthContext.signUp),
          const AuthPasswordField(),
          const SizedBox(height: 20),
          const AuthPasswordField(isConfirmPassword: true),
          const SizedBox(height: 20),
          SimpleButton(
            secondaryColor: Theme.of(context).primaryColor,
            primaryColor: Colors.white,
            width: 0.9,
            text: 'SIGN UP',
            onPressed: () {
              final name = context.read<ProfileFormBloc>().state.appUser.name;

              if (name.isNotEmpty) {
                context.read<SignInFormBloc>().add(const SignInFormEvent
                    .registerWithEmailAndPasswordPressed());
              } else {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(const SnackBar(
                      content: Text('Name field can not be empty')));
              }
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
