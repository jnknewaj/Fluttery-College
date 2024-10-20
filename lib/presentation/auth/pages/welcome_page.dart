import 'package:flutter/material.dart';
import 'package:flutter_college/presentation/auth/pages/sign_in_page.dart';
import 'package:flutter_college/presentation/auth/pages/sign_up_page.dart';
import 'package:flutter_college/presentation/core/widgets/simple_button.dart';
import 'package:flutter_college/utils/app_utils/router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          SimpleButton(
            text: 'SIGN IN',
            onPressed: () {
              navigateTo(context, const SignInPage());
            },
          ),
          SimpleButton(
            text: 'SIGN UP',
            onPressed: () {
              navigateTo(context, const SignUpPage());
            },
            secondaryColor: Theme.of(context).primaryColor,
            primaryColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
