import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../apis/api_error_model.dart';
import '../helpers/spacing.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class VerticalFailureFeedbackWidget extends StatelessWidget {
  const VerticalFailureFeedbackWidget({
    super.key,
    required this.apiErrorModel,
    this.onRetry,
  });

  final ApiErrorModel apiErrorModel;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Error Icon
            Container(
              padding: EdgeInsets.all(20.r),
              decoration: BoxDecoration(
                color: AppColors.lightRed.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                apiErrorModel.icon ?? Icons.error_outline,
                size: 64.sp,
                color: AppColors.lightRed,
              ),
            ),
            verticalSpace(20),

            // Error Title
            if (apiErrorModel.statusCode != null)
              Text(
                'Error ${apiErrorModel.statusCode}',
                style: AppTextStyles.font16SemiBold.copyWith(
                  color: AppColors.lightRed,
                ),
              ),
            if (apiErrorModel.statusCode != null) verticalSpace(8),

            // Error Message
            if (apiErrorModel.message != null)
              Text(
                apiErrorModel.message!,
                style: AppTextStyles.font16Medium,
                textAlign: TextAlign.center,
              ),
            if (apiErrorModel.message != null) verticalSpace(16),

            // Error Details List
            if (apiErrorModel.errors.isNotEmpty) ...[
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.lightRed.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: AppColors.lightRed.withValues(alpha: 0.2),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Details:',
                      style: AppTextStyles.font14Medium.copyWith(
                        color: AppColors.lightRed,
                      ),
                    ),
                    verticalSpace(8),
                    ...apiErrorModel.errors.map(
                      (error) => Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              size: 6.sp,
                              color: AppColors.lightRed,
                            ),
                            horizontalSpace(8),
                            Expanded(
                              child: Text(
                                error,
                                style: AppTextStyles.font14Regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(24),
            ],

            // Retry Button
            if (onRetry != null)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onRetry,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.purple,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
