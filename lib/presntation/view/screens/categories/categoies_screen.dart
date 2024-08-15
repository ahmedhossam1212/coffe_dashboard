import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/presntation/view/widgets/categories_card.dart';
import 'package:coffee_dashboard/presntation/view/widgets/input_form.dart';
import 'package:coffee_dashboard/presntation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';

class CategoiesScreen extends StatefulWidget {
  const CategoiesScreen({super.key});

  @override
  State<CategoiesScreen> createState() => _CategoiesScreenState();
}

class _CategoiesScreenState extends State<CategoiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.nude,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  defualtFormField(context,
                      controller: TextEditingController(),
                      validate: () {},
                      hint: "Name",
                      type: TextInputType.datetime,
                      width: context.width * 0.5),
                  SizedBox(
                    width: context.width * 0.04,
                  ),
                  mainButton(context,
                      width: context.width * 0.13,
                      onpressd: () {},
                      background: AppColors.black,
                      text: "Submit")
                ],
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
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
                          style: getBoldStyle(
                              color: AppColors.black, fontSize: 15),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              Expanded(
                  child: GridView.builder(
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) =>
                    buildCategory(context),
              )),
            ],
          ),
        ));
  }
}
