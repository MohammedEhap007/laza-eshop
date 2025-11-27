import 'package:flutter/material.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/product_details/product_details_body.dart';

import '../../data/models/products_item_model.dart';

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
