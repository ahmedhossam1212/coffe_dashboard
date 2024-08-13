import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:flutter/material.dart';

Widget mainButton(BuildContext context,
        {required VoidCallback onpressd,
        required Color background,
        required String text,
        required double width}) =>
    Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: MaterialButton(
        minWidth: width,
        height: context.height * 0.07,
        onPressed: onpressd,
        color: background,
        child: Text(
          text,
          style: getRegularStyle(color: AppColors.brown, fontSize: 15),
        ),
      ),
    );
