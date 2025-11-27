import 'package:flutter/material.dart';

import '../../data/models/products_item_model.dart';
import 'widgets/product_details/product_details_body.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductsItemModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ProductDetailsBody(product: product)),
    );
  }
}
