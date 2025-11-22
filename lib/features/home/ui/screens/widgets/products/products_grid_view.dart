import 'package:flutter/material.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/products/products_grid_view_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

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
          return const ProductsGridViewItem();
        },
        itemCount: 10,
      ),
    );
  }
}
