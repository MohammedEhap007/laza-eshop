import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/widgets/custom_app_bar.dart';
import '../../../cubits/products_cubit/products_cubit.dart';
import 'all_products_bloc_builder.dart';

class AllProductsScreenBody extends StatefulWidget {
  const AllProductsScreenBody({super.key});

  @override
  State<AllProductsScreenBody> createState() => _AllProductsScreenBodyState();
}

class _AllProductsScreenBodyState extends State<AllProductsScreenBody> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().getProducts();
    scrollController.addListener(_fetchMoreProducts);
  }

  @override
  void dispose() {
    scrollController.removeListener(_fetchMoreProducts);
    scrollController.dispose();
    super.dispose();
  }

  void _fetchMoreProducts() {
    // Trigger pagination when user is 200 pixels from the bottom
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 200) {
      context.read<ProductsCubit>().fetchMoreProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const CustomAppBar(
            title: 'All Products',
          ),
        ),
        verticalSpace(25),
        Expanded(
          child: CustomScrollView(
            controller: scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            slivers: const [
              AllProductsBlocBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
