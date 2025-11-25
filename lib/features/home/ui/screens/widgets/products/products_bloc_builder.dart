import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/widgets/vertical_failure_feedback_widget.dart';
import '../../../../data/models/products_response.dart';
import '../../../cubits/categories_cubit/categories_cubit.dart';
import '../../../cubits/products_cubit/products_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../data/models/products_item_model.dart';
import '../../../cubits/products_cubit/products_state.dart';
import 'products_grid_view.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) =>
          current is ProductsLoading ||
          current is ProductsSuccess ||
          current is ProductsFailure,
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () => Skeletonizer.sliver(
            child: buildProductsShimmer(),
          ),
          productsSuccess: (productsResponse) =>
              ProductsGridView(productsResponse: productsResponse),
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

  ProductsGridView buildProductsShimmer() {
    return ProductsGridView(
      productsResponse: ProductsResponse(
        products: List.generate(
          8,
          (index) => ProductsItemModel(
            id: 'skeleton-$index',
            name: 'Loading...',
            price: 0.0,
            description: 'Loading description...',
            coverPicture: '',
            code: '',
            arabicName: '',
            arabicDescription: '',
            productPictures: [],
            quantityInStock: null,
            weight: null,
            color: '',
            rating: null,
            reviewsCount: null,
            discountPercentage: null,
            sellerId: '',
            categories: [],
          ),
        ),
        pageNumber: 0,
        pageSize: 0,
        totalCount: 0,
        hasNext: null,
        hasPrevious: null,
      ),
    );
  }
}
