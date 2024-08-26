import 'dart:io';
import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/presntation/manager/cubit/categoris_cubit.dart';
import 'package:coffee_dashboard/presntation/manager/states/categories_states.dart';
import 'package:coffee_dashboard/presntation/view/widgets/categories_card.dart';
import 'package:coffee_dashboard/presntation/view/widgets/input_form.dart';
import 'package:coffee_dashboard/presntation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CategoiesScreen extends StatefulWidget {
  const CategoiesScreen({super.key});

  @override
  State<CategoiesScreen> createState() => _CategoiesScreenState();
}

class _CategoiesScreenState extends State<CategoiesScreen> {
  final TextEditingController nameController = TextEditingController();

  File? image;

  //check git hu

  final _picker = ImagePicker();
  Future<void> openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategorisCubit()..getCategories(),
      child: BlocConsumer<CategorisCubit, CategoriesStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CategorisCubit.get(context);
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
                            controller: nameController,
                            validate: () {},
                            hint: "Name",
                            type: TextInputType.datetime,
                            width: context.width * 0.5),
                        SizedBox(
                          width: context.width * 0.04,
                        ),
                        mainButton(context, width: context.width * 0.13,
                            onpressd: () {
                          cubit.addCategory(nameController.text, image!);
                        }, background: AppColors.black, text: "Submit")
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.03,
                    ),
                    SizedBox(
                      width: context.width * 0.09,
                      child: image != null
                          ? Container(
                              clipBehavior: Clip.antiAlias,
                              width: 120,
                              height: 120,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.file(
                                image!,
                                fit: BoxFit.cover,
                              ))
                          : TextButton(
                              onPressed: () {
                                openImagePicker();
                              },
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
                      itemCount: cubit.categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 3),
                      itemBuilder: (BuildContext context, int index) =>
                          buildCategory(context, cubit.categories[index]),
                    )),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
