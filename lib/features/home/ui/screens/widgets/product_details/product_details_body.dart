import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/widgets/custom_app_bar.dart';
import 'package:laza_eshop/core/widgets/custom_text_button.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/product_details/product_sliver_app_bar.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/product_details/info_chip.dart';

import '../../../../data/models/products_item_model.dart';
import '../home_components/custom_home_screen_app_bar.dart';
import 'product_info.dart';

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
