import 'package:coffee_dashboard/presntation/view/screens/categories/category_details.dart';
import 'package:coffee_dashboard/presntation/view/screens/home_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/notifcation_screen.dart';
import 'package:coffee_dashboard/presntation/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static String splash = '/splash';
  static String home = '/home';
  static String notifcation = '/notifcation';
  static String categories = '/categories';

  static final router = GoRouter(initialLocation: splash, routes: [
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: notifcation,
      builder: (context, state) => const NotifcationScreen(),
    ),
    GoRoute(
      path: categories,
      builder: (context, state) => CategoryDetails(),
    )
  ]);

  // methods

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
