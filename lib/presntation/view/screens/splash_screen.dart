import 'package:coffee_dashboard/config/routes/app_routes.dart';
import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      // ignore: use_build_context_synchronously
      AppRouter.goAndFinish(context, AppRouter.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: context.height * 0.2,
                width: context.width * 0.3,
                child:
                    const RiveAnimation.asset("assets/animation/coffee.riv")),
            Text(
              "pop",
              style: getBoldStyle(color: AppColors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
