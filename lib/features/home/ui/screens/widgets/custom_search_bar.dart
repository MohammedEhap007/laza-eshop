import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: SearchBar(
        constraints: BoxConstraints(
          maxWidth: 275.w,
        ),
        leading: SvgPicture.asset(
          AppAssets.iconsSearchIcon,
          width: 20.w,
          height: 20.h,
        ),
        hintText: 'Search...',
        hintStyle: WidgetStatePropertyAll(
          AppTextStyles.font14Regular.copyWith(
            color: Colors.grey,
          ),
        ),
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 15.0),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          context.isDarkMode() ? AppColors.lightDark : AppColors.darkerLight,
        ),
        textStyle: WidgetStatePropertyAll(AppTextStyles.font14Medium),
        elevation: const WidgetStatePropertyAll(
          0,
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.search,
      ),
    );
  }
}
