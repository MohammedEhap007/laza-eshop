import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../data/models/categories_item_model.dart';
import '../../../data/models/categories_response.dart';
import '../../cubits/categories_cubit/categories_cubit.dart';
import '../../cubits/categories_cubit/categories_state.dart';
import 'categories_list_view.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      buildWhen: (previous, current) =>
          current is CategoriesLoading ||
          current is CategoriesSuccess ||
          current is CategoriesFailure,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () => Skeletonizer(
            enableSwitchAnimation: true,
            child: CategoriesListView(
              categoriesResponse: CategoriesResponse(
                categories: List.generate(
                  6,
                  (index) => CategoriesItemModel(
                    name: 'Category Name',
                    imageUrl: '',
                    id: 'skeleton-$index',
                  ),
                ),
              ),
            ),
          ),
          categoriesSuccess: (categoriesResponse) => CategoriesListView(
            categoriesResponse: categoriesResponse,
          ),
          categoriesFailure: (errorMessage) => Center(
            child: Text('Error: $errorMessage'),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
