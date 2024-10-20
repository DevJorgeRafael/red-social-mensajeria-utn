import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:red_social_mensajeria_utn/presentation/screens/main_screen.dart';
import 'package:red_social_mensajeria_utn/presentation/screens/screens.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage(child: const WelcomeScreen()),
    ),
    GoRoute(
      path: '/signin',
      pageBuilder: (context, state) => NoTransitionPage(child: const SigninOrSignupScreen()),
    ),
    GoRoute(
      path: '/main',
      pageBuilder: (context, state) => NoTransitionPage(child: const MainScreen()),

    ),
  ],

  initialLocation: '/main'
);

class NoTransitionPage<T> extends Page<T> {
  final Widget child;

  NoTransitionPage({required this.child}) : super(key: ValueKey(child));

  @override
  Route<T> createRoute(BuildContext context) {
    return MaterialPageRoute<T>(
      builder: (context) => child,
      settings: this,
    );
  }
}
