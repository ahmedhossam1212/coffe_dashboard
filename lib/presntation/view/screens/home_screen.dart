import 'package:coffee_dashboard/config/routes/app_routes.dart';
import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/generated/l10n.dart';
import 'package:coffee_dashboard/presntation/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.nude,
      appBar: AppBar(
        backgroundColor: AppColors.brown,
        title: Text(
          S.of(context).dashboard,
          style: getBoldStyle(
            color: AppColors.black,
            fontSize: context.height * 0.045,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                AppRouter.goPush(context, AppRouter.notifcation);
              },
              icon: Icon(
                Icons.notifications_none,
                color: AppColors.black,
              ))
        ],
      ),
      body: Row(
        children: [
          buildDrawer(context),
        ],
      ),
    );
  }
}
