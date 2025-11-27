import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/utils/app_extensions.dart';
import '../../../../data/models/categories_item_model.dart';
import '../../../../data/models/products_item_model.dart';
import '../products/product_item.dart';

import '../../../../../../core/themes/app_assets.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import 'product_sliver_app_bar_actions.dart';
import 'product_sliver_app_bar_leading.dart';

class ProductSliverAppBar extends StatelessWidget {
  const ProductSliverAppBar({
    super.key,
    required this.product,
  });

  final ProductsItemModel product;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      expandedHeight: 450.h,
      pinned: true,
      stretch: true,
      leadingWidth: 60.w,
      leading: const ProductSliverAppBarLeading(),
      actions: const [
        ProductSliverAppBarActions(),
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
                child: getCategoryLogoUrl() != null
                    ? SvgPicture.network(
                        getCategoryLogoUrl()!,
                        placeholderBuilder: (context) => Image.asset(
                          AppAssets.iconsCategoriesLoadingIcon,
                          fit: BoxFit.contain,
                        ),
                        fit: BoxFit.scaleDown,
                      )
                    : Center(
                        child: Text(
                          product.name ?? '',
                          style: AppTextStyles.font16SemiBold,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
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

  String? getCategoryLogoUrl() {
    if (product.categories == null || product.categories!.isEmpty) {
      return null;
    }

    switch (product.categories!.first) {
      case 'gucci':
        return 'https://upload.wikimedia.org/wikipedia/commons/c/c5/Gucci_logo.svg';
      case 'balenciaga':
        return 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Balenciaga_Logo.svg';
      case 'adidas':
        return 'https://upload.wikimedia.org/wikipedia/commons/2/20/Adidas_Logo.svg';
      case "levi's":
        return 'https://upload.wikimedia.org/wikipedia/commons/7/75/Levi%27s_logo.svg';
      case 'nike':
        return 'https://upload.wikimedia.org/wikipedia/commons/a/a6/Logo_NIKE.svg';
      case 'puma':
        return 'https://upload.wikimedia.org/wikipedia/en/d/da/Puma_complete_logo.svg';
      case 'zara':
        return 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Zara_Logo.svg';
      case 'under armour':
        return 'https://upload.wikimedia.org/wikipedia/commons/4/44/Under_armour_logo.svg';
      case 'tommy hilfiger':
        return 'https://upload.wikimedia.org/wikipedia/commons/2/26/Tommy_hilfig_vectorlogo.svg';
      case 'h&m':
        return 'https://upload.wikimedia.org/wikipedia/commons/5/53/H%26M-Logo.svg';
      case 'reebok':
        return 'https://upload.wikimedia.org/wikipedia/commons/5/53/Reebok_2019_logo.svg';
      case 'lacoste':
        return 'https://upload.wikimedia.org/wikinews/en/4/43/Lacoste_logo.svg';
      default:
        return null;
    }
  }
}
