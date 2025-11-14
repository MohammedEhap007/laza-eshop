import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

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
            child: Image.asset(
              AppAssets.imagesOnboardingMan,
              fit: BoxFit.contain,
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
