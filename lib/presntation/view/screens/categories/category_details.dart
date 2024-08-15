import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/presntation/view/widgets/input_form.dart';
import 'package:coffee_dashboard/presntation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  CategoryDetails({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.nude,
      appBar: AppBar(
        backgroundColor: AppColors.nude,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            defualtFormField(context,
                controller: nameController,
                validate: () {},
                hint: "Name",
                type: TextInputType.name,
                width: context.width * 0.5),
            SizedBox(
              width: context.width * 0.09,
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: AppColors.black,
                      ),
                      Text(
                        "Select Image",
                        style:
                            getBoldStyle(color: AppColors.black, fontSize: 15),
                      )
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mainButton(context,
                    width: context.width * 0.13,
                    onpressd: () {},
                    background: AppColors.black,
                    text: "Edit"),
                SizedBox(
                  width: context.width * 0.03,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.red,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
