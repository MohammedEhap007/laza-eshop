import 'package:flutter/material.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories/categories_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories/categories_item.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories/categories_list_view.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/categories/categories_section.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/custom_home_screen_app_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/custom_search_button.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/hello_text.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/custom_search_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/new_arrival_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/products/product_item.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/home_components/search_section.dart';

import '../products/products_grid_view.dart';
import '../products/products_grid_view_item.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(5),
                const CustomHomeScreenAppBar(),
                verticalSpace(20),
                const HelloText(),
                verticalSpace(20),
                const SearchSection(),
                verticalSpace(20),
                const CategoriesSection(),
                verticalSpace(15),
                const NewArrivalBar(),
                verticalSpace(15),
              ],
            ),
          ),
        ),
        const ProductsGridView(),
        SliverToBoxAdapter(
          child: verticalSpace(15),
        ),
      ],
    );
  }
}
