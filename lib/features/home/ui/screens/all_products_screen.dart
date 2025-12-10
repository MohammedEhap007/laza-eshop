import 'package:flutter/material.dart';

import 'widgets/all_products/all_products_screen_body.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AllProductsScreenBody()),
    );
  }
}
