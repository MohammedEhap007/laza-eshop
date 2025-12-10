import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/widgets/vertical_failure_feedback_widget.dart';
import '../../../cubits/products_cubit/products_cubit.dart';
import '../../../cubits/products_cubit/products_state.dart';
import '../products/products_grid_view.dart';
import '../products/products_shimmer.dart';

class AllProductsBlocBuilder extends StatelessWidget {
  const AllProductsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) =>
          current is ProductsLoading ||
          current is ProductsSuccess ||
          current is ProductsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () => const ProductsShimmer(),
          productsSuccess: (productsResponse) => ProductsGridView(
            productsResponse: productsResponse,
          ),
          productsFailure: (apiErrorModel) => SliverToBoxAdapter(
            child: VerticalFailureFeedbackWidget(
              apiErrorModel: apiErrorModel,
              onRetry: () {
                context.read<ProductsCubit>().getProducts();
              },
            ),
          ),
          orElse: () => const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
