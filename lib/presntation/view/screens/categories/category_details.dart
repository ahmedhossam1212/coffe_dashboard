import 'package:coffee_dashboard/core/utils/app_colors.dart';
import 'package:coffee_dashboard/core/utils/media_query_values.dart';
import 'package:coffee_dashboard/core/utils/style_manager.dart';
import 'package:coffee_dashboard/presntation/manager/cubit/category_cubit.dart';
import 'package:coffee_dashboard/presntation/manager/states/category_states.dart';
import 'package:coffee_dashboard/presntation/view/widgets/input_form.dart';
import 'package:coffee_dashboard/presntation/view/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryDetails extends StatelessWidget {
  CategoryDetails({
    super.key,
    required this.categoryId,
  });

  final int categoryId;

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit()..getCategory(categoryId),
      child: BlocConsumer<CategoryCubit, OneCategoryStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CategoryCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.nude,
            appBar: AppBar(
              backgroundColor: AppColors.nude,
            ),
            body: BlocBuilder<CategoryCubit, OneCategoryStates>(
              builder: (context, state) {
                if (state is OneCategoryLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is OneCategorySuccessState) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: context.height * 0.08),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Material(
                            elevation: 10,
                            color: AppColors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: context.width * 0.25,
                                  height: context.height * 0.3,
                                  child: Image.network(
                                    cubit.category!.data.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.04,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Name: ${cubit.category!.data.name} ",
                                      style: getRegularStyle(
                                          color: AppColors.brown, fontSize: 20),
                                    ),
                                    Text(
                                      "Create at: ${cubit.category!.data.createdAt} ",
                                      style: getRegularStyle(
                                          color: AppColors.lightGrey,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Count:${cubit.category!.data.productsCount} ",
                                      style: getRegularStyle(
                                          color: AppColors.lightGrey,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: context.height * 0.04,
                          ),
                          defualtFormField(context,
                              controller: nameController,
                              validate: () {},
                              hint: "Name",
                              type: TextInputType.name,
                              width: context.width * 0.5),
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
                            height: context.height * 0.04,
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
                } else {
                  return const Text("Err");
                }
              },
            ),
          );
        },
      ),
    );
  }
}
