import 'package:go_router/go_router.dart';
import 'package:red_social_mensajeria_utn/presentation/screens/main_screen.dart';
import 'package:red_social_mensajeria_utn/presentation/screens/screens.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => SigninOrSignupScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => MainScreen(),

    ),
  ],

  initialLocation: '/main'
);

