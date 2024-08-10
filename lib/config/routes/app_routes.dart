import 'package:coffee_dashboard/presntation/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static String splash = '/splash';

  static final router = GoRouter(initialLocation: splash, routes: [
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashScreen(),
    )
  ]);

  static void goPush(BuildContext context, String path) {
    GoRouter.of(context).push(path);
  }

  static void goAndFinish(BuildContext context, String path) {
    GoRouter.of(context).go(
      path,
    );
  }

  static void goBack(BuildContext context) {
    GoRouter.of(context).pop();
  }
}
