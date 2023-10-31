import "package:learning/pages/auth/login.dart";
import "package:learning/pages/auth/signup.dart";
import 'package:go_router/go_router.dart';
import "package:learning/pages/home.dart";

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/signup",
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => HomePage(),
    ),
  ],
);
