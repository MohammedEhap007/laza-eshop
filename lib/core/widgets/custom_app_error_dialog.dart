import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../apis/api_error_model.dart';
import '../helpers/spacing.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../utils/app_extensions.dart';

import 'custom_text_button.dart';

void showErrorDialog(BuildContext context, ApiErrorModel apiErrorModel) {
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
                        ? AppColors.lightRed.withValues(alpha: 0.15)
                        : AppColors.lightRed.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.lightRed,
                      width: 2.w,
                    ),
                  ),
                  child: Icon(
                    apiErrorModel.icon ?? Icons.error_outline,
                    color: AppColors.lightRed,
                    size: 48.sp,
                  ),
                ),
                verticalSpace(20),
                Text(
                  apiErrorModel.message ?? 'An error occurred',
                  style: AppTextStyles.font22SemiBold.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpace(16),
                if (apiErrorModel.errors.isNotEmpty) ...[
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerHighest,
                        width: 1.w,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 18.sp,
                              color: AppColors.gray,
                            ),
                            horizontalSpace(8),
                            Text(
                              'Error Details',
                              style: AppTextStyles.font14Medium.copyWith(
                                color: AppColors.gray,
                              ),
                            ),
                          ],
                        ),
                        verticalSpace(8),
                        ...apiErrorModel.errors.map((errorDetail) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 4.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '- ',
                                  style: AppTextStyles.font14Regular.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.8),
                                    height: 1.4,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    errorDetail,
                                    style: AppTextStyles.font14Regular.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.8),
                                      height: 1.4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  verticalSpace(20),
                ],
                CustomTextButton(
                  text: 'Close',
                  onPressed: () => context.pop(),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
