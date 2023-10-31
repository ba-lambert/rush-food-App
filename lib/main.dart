import 'package:flutter/material.dart';
import 'package:learning/pages/auth/login.dart';
import 'package:learning/pages/auth/signup.dart';
import 'package:learning/pages/home.dart';
import 'package:go_router/go_router.dart';
// import 'package:learning/utils/routerConfig.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/signup",
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: "/murakazaneza",
      builder: (context, state) => HomePage(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
