import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';
import 'package:laza_eshop/features/home/data/models/products_item_model.dart';
import 'package:laza_eshop/features/home/ui/screens/widgets/products/product_item.dart';

import '../../../../../../core/themes/app_assets.dart';

class ProductSliverAppBar extends StatelessWidget {
  const ProductSliverAppBar({super.key, required this.product});

  final ProductsItemModel product;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      expandedHeight: 450.h,
      pinned: true,
      stretch: true,
      leadingWidth: 60.w,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 5.0),
        child: CircleAvatar(
          radius: 22.5.r,
          backgroundColor: Theme.of(
            context,
          ).colorScheme.surfaceContainerHighest,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              context.pop();
            },
            icon: SvgPicture.asset(
              AppAssets.iconsArrowBackLightIcon,
              width: 25.sp,
              height: 25.sp,
              colorFilter: ColorFilter.mode(
                Theme.of(context).iconTheme.color!,
                BlendMode.srcIn,
              ),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 5.0),
          child: CircleAvatar(
            radius: 22.5.r,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: SvgPicture.asset(
                AppAssets.iconsCartIcon,
                width: 25.sp,
                height: 25.sp,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        centerTitle: true,
        title: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: 80.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: context.isDarkMode()
                    ? AppColors.mainDark.withAlpha((0.2 * 255).toInt())
                    : AppColors.mainLight.withAlpha((0.2 * 255).toInt()),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.network(
                  'https://upload.wikimedia.org/wikipedia/commons/a/a6/Logo_NIKE.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ),
        background: Hero(
          tag: product.id!,
          child: CachedNetworkImage(
            imageUrl: product.coverPicture!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
