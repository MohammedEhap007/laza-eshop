import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 10),
      decoration: BoxDecoration(
        color: context.isDarkMode()
            ? AppColors.lightDark
            : AppColors.darkerLight,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          Container(
            width: 40.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: context.isDarkMode()
                  ? AppColors.lighterDark
                  : AppColors.mainLight,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: SvgPicture.asset(
              AppAssets.iconsCartIcon,
              fit: BoxFit.scaleDown,
            ),
          ),
          horizontalSpace(10),
          Text(
            'Sports',
            style: AppTextStyles.font14Medium,
          ),
        ],
      ),
    );
  }
}
