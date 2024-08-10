import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildDrawer(BuildContext context) => Material(
      elevation: 10,
      child: Container(
        color: AppColors.nude,
        height: double.infinity,
        width: context.width * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.chart_pie,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        "Statistics",
                        style: getSemiBoldStyle(
                            color: AppColors.black,
                            fontSize: context.height * 0.03),
                      ),
                    ],
                  )),
              SizedBox(
                height: context.height * 0.02,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.category_outlined,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        "Categories",
                        style: getSemiBoldStyle(
                            color: AppColors.black,
                            fontSize: context.height * 0.03),
                      ),
                    ],
                  )),
              SizedBox(
                height: context.height * 0.02,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.cube_box,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        "Products",
                        style: getSemiBoldStyle(
                            color: AppColors.black,
                            fontSize: context.height * 0.03),
                      ),
                    ],
                  )),
              SizedBox(
                height: context.height * 0.02,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        "Orders",
                        style: getSemiBoldStyle(
                            color: AppColors.black,
                            fontSize: context.height * 0.03),
                      ),
                    ],
                  )),
              SizedBox(
                height: context.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
