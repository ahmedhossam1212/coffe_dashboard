import 'package:coffee_dashboard/config/routes/app_routes.dart';
import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

class NotifcationScreen extends StatefulWidget {
  const NotifcationScreen({super.key});

  @override
  State<NotifcationScreen> createState() => _NotifcationScreenState();
}

class _NotifcationScreenState extends State<NotifcationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.nude,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              AppRouter.goBack(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColors.black,
            )),
        backgroundColor: AppColors.brown,
        title: Text(
          "Notifcation",
          style: getBoldStyle(
            color: AppColors.black,
            fontSize: context.height * 0.045,
          ),
        ),
      ),
    );
  }
}
