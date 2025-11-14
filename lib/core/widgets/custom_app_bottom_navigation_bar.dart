import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

import '../themes/app_assets.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class CustomAppBottomNavigationBar extends StatefulWidget {
  const CustomAppBottomNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomAppBottomNavigationBar> createState() =>
      _CustomAppBottomNavigationBarState();
}

class _CustomAppBottomNavigationBarState
    extends State<CustomAppBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      child: SizedBox(
        height: 80.h,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          elevation: 0,
          enableFeedback: false,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(fontSize: 1),
          iconSize: 20.sp,
          backgroundColor: context.isDarkMode()
              ? AppColors.lighterDark
              : AppColors.mainLight,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            widget.onItemTapped(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.iconsHomeIcon,
                height: 20.sp,
                width: 20.sp,
              ),
              activeIcon: Text(
                'Home',
                style: AppTextStyles.font11Medium.copyWith(
                  color: AppColors.purple,
                ),
              ),
              label: 'Home',
              backgroundColor: context.isDarkMode()
                  ? AppColors.lighterDark
                  : AppColors.mainLight,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.iconsWishlistIcon,
                height: 20.sp,
                width: 20.sp,
              ),
              activeIcon: Text(
                'Wishlist',
                style: AppTextStyles.font11Medium.copyWith(
                  color: AppColors.purple,
                ),
              ),
              label: 'Wishlist',
              backgroundColor: context.isDarkMode()
                  ? AppColors.lighterDark
                  : AppColors.mainLight,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.iconsCartIcon,
                height: 20.sp,
                width: 20.sp,
              ),
              activeIcon: Text(
                'Cart',
                style: AppTextStyles.font11Medium.copyWith(
                  color: AppColors.purple,
                ),
              ),
              label: 'Cart',
              backgroundColor: context.isDarkMode()
                  ? AppColors.lighterDark
                  : AppColors.mainLight,
            ),
          ],
        ),
      ),
    );
  }
}
