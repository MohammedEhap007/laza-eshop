import 'package:flutter/material.dart';

import '../../../../data/models/products_response.dart';
import 'products_grid_view_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key, required this.productsResponse});

  final ProductsResponse productsResponse;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      sliver: SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          return ProductsGridViewItem(
            productsItemModel: productsResponse.products![index],
          );
        },
        itemCount: productsResponse.products!.length,
      ),
    );
  }
}
