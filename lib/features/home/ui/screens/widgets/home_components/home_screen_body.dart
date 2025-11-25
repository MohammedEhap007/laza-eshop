import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/di/dependency_injection.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../categories/categories_bar.dart';
import '../categories/categories_item.dart';
import '../categories/categories_list_view.dart';
import '../categories/categories_section.dart';
import 'custom_home_screen_app_bar.dart';
import 'custom_search_button.dart';
import 'hello_text.dart';
import 'custom_search_bar.dart';
import 'new_arrival_bar.dart';
import '../products/product_item.dart';
import 'search_section.dart';

import '../../../cubits/products_cubit/products_cubit.dart';
import '../products/products_bloc_builder.dart';
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
        BlocProvider(
          create: (context) => getIt<ProductsCubit>()..getProducts(),
          child: const ProductsBlocBuilder(),
        ),
        SliverToBoxAdapter(
          child: verticalSpace(15),
        ),
      ],
    );
  }
}
