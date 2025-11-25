import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../utils/app_extensions.dart';
import 'custom_text_button.dart';

void showSuccessDialog(
  BuildContext context,
  String message, {
  VoidCallback? onConfirm,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        elevation: 8,
        backgroundColor: Colors.transparent,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: context.isDarkMode()
                        ? AppColors.purple.withValues(alpha: 0.15)
                        : AppColors.purple.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.purple,
                      width: 2.w,
                    ),
                  ),
                  child: Icon(
                    Icons.check_circle_outline,
                    color: AppColors.purple,
                    size: 48.sp,
                  ),
                ),
                verticalSpace(20),
                Text(
                  'Success!',
                  style: AppTextStyles.font22SemiBold.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(12),
                Text(
                  message,
                  style: AppTextStyles.font14Regular.copyWith(
                    color: AppColors.gray,
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(24),
                CustomTextButton(
                  text: 'Continue',
                  onPressed: () {
                    context.pop();
                    onConfirm?.call();
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
