import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/utils/app_extensions.dart';

class OnboardingTextButton extends StatelessWidget {
  const OnboardingTextButton({
    super.key,
    required this.buttonText,
    required this.isSelected,
    required this.onPressed,
  });

  final String buttonText;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 50.h,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isSelected
              ? AppColors.purple
              : context.isDarkMode()
              ? AppColors.lightDark
              : AppColors.darkerLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          buttonText,
          style: AppTextStyles.font16Medium.copyWith(
            color: isSelected ? AppColors.white : AppColors.gray,
          ),
        ),
      ),
    );
  }
}
