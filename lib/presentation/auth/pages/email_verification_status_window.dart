import 'package:flutter/material.dart';
import 'package:flutter_college/presentation/core/pages/auth_window.dart';
import 'package:flutter_college/presentation/core/widgets/simple_button.dart';
import 'package:flutter_college/utils/app_utils/router.dart';

class EmailVerificationStatusWindow extends StatelessWidget {
  const EmailVerificationStatusWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'A verification link is sent to your email. Check and verify ASAP.',
            ),
            const SizedBox(height: 10),
            SimpleButton(
              text: 'Continue',
              onPressed: () {
                navigateAndRemoveUntil(context, const AuthWindow());
              },
              secondaryColor: Theme.of(context).primaryColor,
              primaryColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
