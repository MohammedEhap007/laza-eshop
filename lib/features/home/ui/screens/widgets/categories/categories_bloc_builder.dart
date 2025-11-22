import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_eshop/core/widgets/horizontal_failure_feedback_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../data/models/categories_item_model.dart';
import '../../../../data/models/categories_response.dart';
import '../../../cubits/categories_cubit/categories_cubit.dart';
import '../../../cubits/categories_cubit/categories_state.dart';
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
          categoriesFailure: (apiErrorModel) => HorizontalFailureFeedbackWidget(
            apiErrorModel: apiErrorModel,
            onRetry: () {
              context.read<CategoriesCubit>().getCategories();
            },
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
