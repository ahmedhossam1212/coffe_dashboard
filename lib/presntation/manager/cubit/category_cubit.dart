import 'package:coffee_dashboard/config/network/consts.dart';
import 'package:coffee_dashboard/models/category_model.dart';
import 'package:coffee_dashboard/presntation/manager/states/category_states.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryCubit extends Cubit<OneCategoryStates> {
  CategoryCubit() : super(OneCategoryInitState());
  static CategoryCubit get(context) => BlocProvider.of(context);

  CategoryModel? category;

  void getCategory(int id) async {
    emit(OneCategoryLoadingState());
    try {
      final response = await Dio().get(
        "$apiKey/api/v1/categories/$id",
      );
      category = CategoryModel.fromJson(response.data);

      emit(OneCategorySuccessState());
    } catch (e) {
      emit(OneCategoryErrState());
    }
  }
}
