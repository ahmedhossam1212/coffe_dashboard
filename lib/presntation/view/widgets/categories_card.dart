import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/models/categories_model.dart';
import 'package:coffee_dashboard/presntation/view/screens/categories/category_details.dart';
import 'package:flutter/material.dart';

Widget buildCategory(BuildContext context, Category model) => SizedBox(
      height: 300,
      child: Material(
        clipBehavior: Clip.hardEdge,
        color: AppColors.nude,
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Image.network(
                width: double.infinity, fit: BoxFit.cover, model.image),
            SizedBox(
              height: context.height * 0.025,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    model.name,
                    style: getMediumStyle(color: AppColors.black, fontSize: 17),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoryDetails(
                                categoryId: model.id,
                              ),
                            ));
                      },
                      child: const Text("More details"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
