import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_college/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_college/application/profile/profile_form/profile_form_bloc.dart';
import 'package:flutter_college/presentation/core/widgets/auth_button.dart';
import 'package:flutter_college/presentation/core/widgets/edit_text.dart';
import 'package:flutter_college/utils/ui_utils/ui_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final obscureTextProvider = StateProvider<bool>((ref) => true);
final obscureTextConfirmPasswordProvider = StateProvider<bool>((ref) => true);

enum AuthContext { signIn, signUp }

class AuthPasswordField extends ConsumerWidget {
  final bool isConfirmPassword;
  const AuthPasswordField({
    super.key,
    this.isConfirmPassword = false,
  });

  @override
  Widget build(BuildContext context, ref) {
    final isObscure = isConfirmPassword
        ? ref.watch(obscureTextConfirmPasswordProvider)
        : ref.watch(obscureTextProvider);
    return SimpleTextField(
      backgroundColor: const Color.fromARGB(36, 61, 132, 160),
      borderColor: Colors.transparent,
      hintText: 'Password',
      hintColor: Colors.grey,
      bottomMargin: 2,
      obscureText: isObscure,
      suffixIcon: IconButton(
        icon: Icon(
          isObscure ? Icons.visibility : Icons.visibility_off,
          color: Colors.grey,
        ),
        onPressed: () {
          if (isConfirmPassword) {
            ref.read(obscureTextConfirmPasswordProvider.notifier).state =
                !isObscure;
          } else {
            ref.read(obscureTextProvider.notifier).state = !isObscure;
          }
        },
      ),
      onChanged: (val) {
        if (!isConfirmPassword) {
          context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(val));
        } else {
          context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.confirmPasswordChanged(val));
        }
      },
      validator: (val) {
        if (isConfirmPassword) {
          final password = context.read<SignInFormBloc>().state.password.value;
          return password.fold(
            (f) => null,
            (originalPassword) {
              return val != originalPassword ? 'Passwords do not match' : null;
            },
          );
        } else {
          return context.read<SignInFormBloc>().state.password.value.fold(
            (f) {
              return f.maybeMap(
                shortPassword: (_) => "Short Password",
                orElse: () => null,
              );
            },
            (_) => null,
          );
        }
      },
    );
  }
}

class AuthEmailField extends StatelessWidget {
  final AuthContext authContext;
  const AuthEmailField({
    super.key,
    required this.authContext,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleTextField(
      backgroundColor: const Color.fromARGB(36, 61, 132, 160),
      borderColor: Colors.transparent,
      hintText: 'Email',
      hintColor: Colors.grey,
      bottomMargin: 2,
      onChanged: (value) {
        context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(value));
        if (authContext == AuthContext.signUp) {
          context
              .read<ProfileFormBloc>()
              .add(ProfileFormEvent.emailChanged(value));
        }
      },
      validator: (_) {
        return context.read<SignInFormBloc>().state.emailAddress.value.fold(
              (_) => 'Invalid Email',
              (_) => null,
            );
      },
    );
  }
}

class AuthNameField extends StatelessWidget {
  const AuthNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleTextField(
      backgroundColor: const Color.fromARGB(36, 61, 132, 160),
      borderColor: Colors.transparent,
      hintText: 'Name',
      hintColor: Colors.grey,
      bottomMargin: 2,
      onChanged: (str) {
        context.read<ProfileFormBloc>().add(ProfileFormEvent.nameChanged(str));
      },
      validator: (val) {
        if (val!.isEmpty) {
          return "Name can not be empty";
        }
        return null;
      },
    );
  }
}

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthButton(
            mini: true,
            item: SocialItem.google,
            onPressed: () {
              context
                  .read<SignInFormBloc>()
                  .add(const SignInFormEvent.signInWithGooglePressed());
            },
          ),
          const SizedBox(width: 15),
          AuthButton(
            mini: true,
            item: SocialItem.facebook,
            onPressed: () {
              showSnackbar(context, 'Temporarily unavailable');
            },
          ),
          const SizedBox(width: 15),
          AuthButton(
            mini: true,
            item: SocialItem.github,
            onPressed: () {
              showSnackbar(context, 'Temporarily unavailable');
            },
          ),
          const SizedBox(width: 15),
          AuthButton(
            mini: true,
            item: SocialItem.apple,
            onPressed: () {
              showSnackbar(context, 'Temporarily unavailable');
            },
          ),
        ],
      ),
    );
  }
}
