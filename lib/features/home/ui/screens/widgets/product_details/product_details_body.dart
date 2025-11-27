import 'package:flutter/material.dart';

import '../../../../data/models/products_item_model.dart';
import 'product_info.dart';
import 'product_sliver_app_bar.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.product});

  final ProductsItemModel product;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        ProductSliverAppBar(product: product),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          sliver: ProductInfo(product: product),
        ),
      ],
    );
  }
}
