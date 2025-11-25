import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/apis/api_result.dart';
import '../../../data/models/categories_response.dart';
import '../../../data/repos/categories_repo.dart';

import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepo _categoriesRepo;

  CategoriesCubit(this._categoriesRepo)
    : super(const CategoriesState.initial());

  void getCategories() async {
    emit(const CategoriesState.categoriesLoading());
    final response = await _categoriesRepo.getCategories();
    response.when(
      success: (CategoriesResponse categoriesResponse) {
        emit(CategoriesState.categoriesSuccess(categoriesResponse));
      },
      failure: (error) {
        emit(CategoriesState.categoriesFailure(error));
      },
    );
  }
}
