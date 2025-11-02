import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    this.isLoading,
    required this.text,
  });

  final VoidCallback? onPressed;
  final bool? isLoading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading == true,
      child: SizedBox(
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
          child: AnimatedCrossFade(
            firstChild: Text(
              text,
              style: AppTextStyles.font16Medium.copyWith(
                color: AppColors.white,
              ),
            ),
            firstCurve: Curves.easeIn,
            secondChild: const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                color: AppColors.white,
                strokeCap: StrokeCap.round,
                padding: EdgeInsets.all(4),
              ),
            ),
            secondCurve: Curves.easeOut,
            crossFadeState: isLoading == true
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
          ),
        ),
      ),
    );
  }
}
