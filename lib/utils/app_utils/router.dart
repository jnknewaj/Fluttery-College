import 'package:flutter/material.dart';

navigateTo(BuildContext context, Widget page) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}

navigateAndRemoveUntil(BuildContext context, Widget page) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => page),
    (_) => false,
  );
}

pop(BuildContext context) {
  Navigator.of(context).pop();
}





























// import 'package:flutter/material.dart';
// import 'package:flutter_college/presentation/auth/pages/check_pass_reset_email_page.dart';
// import 'package:flutter_college/presentation/auth/pages/email_verification_status_window.dart';
// import 'package:flutter_college/presentation/auth/pages/forgot_password_page.dart';
// import 'package:flutter_college/presentation/auth/pages/set_new_pass_page.dart';
// import 'package:flutter_college/presentation/auth/pages/sign_in_page.dart';
// import 'package:flutter_college/presentation/auth/pages/sign_up_page.dart';
// import 'package:flutter_college/presentation/core/pages/auth_window.dart';
// import 'package:flutter_college/presentation/home/pages/home_navigation.dart';
// import 'package:flutter_college/presentation/home/pages/home_page.dart';
// import 'package:go_router/go_router.dart';

// final GoRouter goRouter = GoRouter(
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) =>
//           const AuthWindow(),
//       routes: <RouteBase>[
//         GoRoute(
//           path: 'signin',
//           builder: (BuildContext context, GoRouterState state) {
//             return const SignInPage();
//           },
//         ),
//         GoRoute(
//           path: 'signup',
//           builder: (BuildContext context, GoRouterState state) {
//             return const SignUpPage();
//           },
//         ),
//         GoRoute(
//           path: 'forgotPassword',
//           builder: (BuildContext context, GoRouterState state) {
//             return const ForgotPasswordPage();
//           },
//         ),
//         GoRoute(
//           path: 'forgotpassstatus',
//           builder: (BuildContext context, GoRouterState state) {
//             return const ForgotPassStatus();
//           },
//         ),
//         GoRoute(
//           path: 'checkpassresetemail',
//           builder: (BuildContext context, GoRouterState state) {
//             return const CheckPassResetEmailPage();
//           },
//         ),
//         GoRoute(
//           path: 'setnewpass',
//           builder: (BuildContext context, GoRouterState state) {
//             return const SetNewPassPage();
//           },
//         ),
//         GoRoute(
//           path: 'emailverificationstatus',
//           builder: (BuildContext context, GoRouterState state) {
//             return const EmailVerificationStatusWindow();
//           },
//         ),
//       ],
//     ),
//     GoRoute(
//       path: '/homenavigation',
//       builder: (BuildContext context, GoRouterState state) {
//         return const HomeNavigation();
//       },
//     ),
//     GoRoute(
//       path: '/home',
//       builder: (BuildContext context, GoRouterState state) {
//         return const HomePage();
//       },
//     ),
//   ],
// );
