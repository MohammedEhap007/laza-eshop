import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onPressed, required this.text});

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.r),
          ),
          backgroundColor: AppColors.purple,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.font16Medium.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
