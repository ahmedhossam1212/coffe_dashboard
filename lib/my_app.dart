import 'package:coffee_dashboard/config/routes/app_routes.dart';
import 'package:coffee_dashboard/config/theme/light_theme.dart';
import 'package:coffee_dashboard/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale("en"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
