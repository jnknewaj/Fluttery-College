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

// class AuthWindow extends StatelessWidget {
//   const AuthWindow({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           getIt<AuthCheckBloc>()..add(const AuthCheckEvent.started()),
//       child: BlocBuilder<AuthCheckBloc, AuthCheckState>(
//         builder: (context, state) {
//           return state.map(
//             initial: (_) => const SplashScreen(),
//             authenticated: (_) {
//               ///This ensures that context.go('/home') only runs after the
//               ///current widget tree has finished building, preventing potential
//               ///issues like trying to navigate while the widget is still being
//               ///built.
//               WidgetsBinding.instance.addPostFrameCallback((_) {
//                 /// can’t use context.go('/home') directly inside the BlocBuilder
//                 /// Cz  `BlocBuilder()` is called multiple times durring
//                 /// widget's lifecycle
//                 context.go('/homenavigation');
//               });
//               return Container();
//             },
//             unauthenticated: (_) => const WelcomePage(),
//           );
//         },
//       ),
//     );
//   }
// }

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => getIt<SignInFormBloc>(),
//         ),
//         BlocProvider(
//           create: (context) => getIt<ProfileFormBloc>(),
//         ),
//         BlocProvider(
//           create: (context) => getIt<EmailVerificationBloc>(),
//         ),
//       ],
//       child: const SafeArea(child: SignUpForm()),
//     );
//   }
// }

// class SignUpForm extends StatelessWidget {
//   const SignUpForm({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocListener(
//       listeners: [
//         BlocListener<ProfileFormBloc, ProfileFormState>(
//           listener: (context, state) {
//             state.saveFailureOrSuccessOption.fold(
//               () {},
//               (some) {
//                 some.fold(
//                   (f) {
//                     final msg = profileFailuresToString(f);
//                     showSnackbar(context, msg);
//                   },
//                   (s) {
//                     // successfully created profile for the registered user
//                     showSnackbar(context, "Profile created sucessfully");
//                     context.read<EmailVerificationBloc>().add(
//                         const EmailVerificationEvent.sentVerificationEmail());
//                   },
//                 );
//               },
//             );
//           },
//         ),
//         BlocListener<SignInFormBloc, SignInFormState>(
//           listener: (context, state) {
//             state.authFailureOrSuccessOption.fold(
//               () {},
//               (some) {
//                 some.fold(
//                   (f) {
//                     final msg = authFailuresToString(f);
//                     showSnackbar(context, msg);
//                   },
//                   (_) {
//                     // user registration successful
//                     showSnackbar(context,
//                         'Successfully registered user, wait a while...');
//                     context
//                         .read<ProfileFormBloc>()
//                         .add(const ProfileFormEvent.saved());
//                   },
//                 );
//               },
//             );

//             state.thirdPartyAuthFailureOrSuccessOption.fold(
//               () {},
//               (either) {
//                 either.fold(
//                   (failure) {
//                     final msg = authFailuresToString(failure);
//                     showSnackbar(context, msg);
//                   },
//                   (unitOrUser) {
//                     unitOrUser.fold(
//                       // old user
//                       (_) {
//                         context.go('/');
//                       },
//                       // new user
//                       (appUser) {
//                         context.read<ProfileFormBloc>().add(
//                             ProfileFormEvent.thirdPartySignInSaved(appUser));
//                       },
//                     );
//                   },
//                 );
//               },
//             );
//           },
//         ),
//         BlocListener<EmailVerificationBloc, EmailVerificationState>(
//           listener: (context, state) {
//             state.map(
//               initial: (_) {},
//               sendingLink: (_) {
//                 showSnackbar(context, 'Please wait...');
//               },
//               linkSent: (_) {
//                 context.pushReplacement('/emailverificationstatus');
//               },
//               isVerified: (_) {},
//               failed: (f) {
//                 showSnackbar(context,
//                     'Something went wrong while sending verification email');
//               },
//             );
//           },
//         )
//       ],
//       child: BlocBuilder<SignInFormBloc, SignInFormState>(
//         builder: (context, state) {
//           return Scaffold(
//             body: Stack(
//               children: [
//                 Form(
//                   autovalidateMode: state.showErrorMessages
//                       ? AutovalidateMode.always
//                       : AutovalidateMode.disabled,
//                   child: const _SignUpUI(),
//                 ),
//                 BlocBuilder<SignInFormBloc, SignInFormState>(
//                   builder: (context, state) {
//                     return state.isSubmitting
//                         ? const Center(child: Loading())
//                         : const SizedBox();
//                   },
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class _SignUpUI extends StatelessWidget {
//   const _SignUpUI();

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       reverse: true,
//       child: Column(
//         children: [
//           const AuthNameField(),
//           const AuthEmailField(authContext: AuthContext.signUp),
//           const AuthPasswordField(),
//           const SizedBox(height: 20),
//           const AuthPasswordField(isConfirmPassword: true),
//           const SizedBox(height: 20),
//           SimpleButton(
//             secondaryColor: Theme.of(context).primaryColor,
//             primaryColor: Colors.white,
//             width: 0.9,
//             text: 'SIGN UP',
//             onPressed: () {
//               final name = context.read<ProfileFormBloc>().state.appUser.name;

//               if (name.isNotEmpty) {
//                 context.read<SignInFormBloc>().add(const SignInFormEvent
//                     .registerWithEmailAndPasswordPressed());
//               } else {
//                 ScaffoldMessenger.of(context)
//                   ..hideCurrentSnackBar()
//                   ..showSnackBar(const SnackBar(
//                       content: Text('Name field can not be empty')));
//               }
//             },
//           ),
//           const Socials(),
//           ElevatedButton(
//             onPressed: () {
//               context.pop();
//             },
//             child: const Text('Back'),
//           ),
//         ],
//       ),
//     );
//   }
// }
