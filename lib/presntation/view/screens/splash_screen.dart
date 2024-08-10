import 'package:coffee_dashboard/core/utils/app_colors.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //RiveAnimation.asset("assets/animation/coffee.riv"),
            Text(
              "Coffee Shope",
              style: getBoldStyle(color: AppColors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
