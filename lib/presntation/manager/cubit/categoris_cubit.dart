import 'dart:developer';

import 'package:coffee_dashboard/config/network/consts.dart';
import 'package:coffee_dashboard/models/categories_model.dart';
import 'package:coffee_dashboard/models/category_model.dart';
import 'package:coffee_dashboard/presntation/manager/states/categories_states.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategorisCubit extends Cubit<CategoriesStates> {
  CategorisCubit() : super(CategoriesInitState());

  static CategorisCubit get(context) => BlocProvider.of(context);

  List categories = [];
  CategoryModel? category;

  void getCategories() async {
    emit(CategoriesLoadingState());
    try {
      final response = await Dio().get(
        "$apiKey/api/v1/categories",
      );
      var model = CategoriesModel.fromJson(response.data);
      categories = model.data;
      log("${model.data}");
      emit(CategoriesSuccessState());
    } catch (e) {
      emit(CategoriesErrState());
    }
  }
}
