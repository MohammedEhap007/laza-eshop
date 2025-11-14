import 'package:flutter/material.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories_list_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CategoriesBar(),
        verticalSpace(15),
        const CategoriesListView(),
      ],
    );
  }
}
