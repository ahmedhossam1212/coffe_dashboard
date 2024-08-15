import 'package:coffee_dashboard/config/routes/app_routes.dart';
import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

Widget buildCategory(BuildContext context) => SizedBox(
      height: 300,
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: AppColors.nude,
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Image.network(
                width: double.infinity,
                fit: BoxFit.cover,
                "https://cdn.dribbble.com/userupload/11886093/file/original-97d3661868ee446bd36ca59534095920.jpg?resize=752x"),
            SizedBox(
              height: context.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Coffee",
                    style: getMediumStyle(color: AppColors.black, fontSize: 17),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        AppRouter.goPush(context, AppRouter.categories);
                      },
                      child: Text("More details"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
