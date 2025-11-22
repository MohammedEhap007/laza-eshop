import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

import '../../../../data/models/products_item_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productsItemModel});

  final ProductsItemModel productsItemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.85,
          child: Container(
            decoration: BoxDecoration(
              color: context.isDarkMode()
                  ? AppColors.mainLight
                  : AppColors.darkerLight,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: productsItemModel.coverPicture!.isEmpty
                ? Image.asset(
                    AppAssets.iconsProductsLoadingIcon,
                    fit: BoxFit.cover,
                  )
                : CachedNetworkImage(
                    imageUrl: productsItemModel.coverPicture!,
                    placeholder: (context, url) => Image.asset(
                      AppAssets.iconsProductsLoadingIcon,
                      fit: BoxFit.cover,
                    ),
                    fit: BoxFit.scaleDown,
                  ),
          ),
        ),
        Positioned(
          top: 15,
          right: 12,
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              AppAssets.iconsWishlistIcon,
              width: 20.sp,
              height: 20.sp,
            ),
          ),
        ),
      ],
    );
  }
}
