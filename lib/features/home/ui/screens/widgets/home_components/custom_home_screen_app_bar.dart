import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

class CustomHomeScreenAppBar extends StatelessWidget {
  const CustomHomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22.5.r,
          backgroundColor: context.isDarkMode()
              ? AppColors.lightDark
              : AppColors.darkerLight,
          child: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              AppAssets.iconsOpenMenuIcon,
              width: 25.w,
              height: 25.h,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                context.isDarkMode() ? AppColors.white : AppColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        CircleAvatar(
          radius: 22.5.r,
          backgroundColor: context.isDarkMode()
              ? AppColors.lightDark
              : AppColors.darkerLight,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 25.w,
              height: 25.h,
              fit: BoxFit.scaleDown,
              AppAssets.iconsCartIcon,
              colorFilter: ColorFilter.mode(
                context.isDarkMode() ? AppColors.white : AppColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
