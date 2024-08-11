import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/generated/l10n.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                        S.of(context).statistics,
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
                        S.of(context).categories,
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
                        S.of(context).products,
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
                        S.of(context).orders,
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
                        Icons.auto_awesome_motion_outlined,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        S.of(context).pages,
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
                        Icons.yard_outlined,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        S.of(context).ads,
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
                        Icons.settings_outlined,
                        color: AppColors.black,
                        size: context.height * 0.03,
                      ),
                      SizedBox(
                        width: context.width * 0.004,
                      ),
                      Text(
                        S.of(context).setting,
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
