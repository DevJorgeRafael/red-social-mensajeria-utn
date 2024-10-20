import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:red_social_mensajeria_utn/screens/screens.dart';

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
      path: '/chats',
      pageBuilder: (context, state) => NoTransitionPage(child: const ChatsScreen()),

    ),
    GoRoute(
      path: '/subjects',
      pageBuilder: (context, state) => NoTransitionPage(child: const SubjectsScreen()),
    ),
    GoRoute(
      path: '/community',
      pageBuilder: (context, state) => NoTransitionPage(child: const CommunityScreen()),
    ),
    GoRoute(
      path: '/history',
      pageBuilder: (context, state) => NoTransitionPage(child: const HistoryScreen()),
    ),
  ],
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
