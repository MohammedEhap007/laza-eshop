import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_eshop/core/apis/api_error_model.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';

class HorizontalFailureFeedbackWidget extends StatelessWidget {
  const HorizontalFailureFeedbackWidget({
    super.key,
    required this.apiErrorModel,
    required this.onRetry,
  });

  final ApiErrorModel apiErrorModel;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.lightRed.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColors.lightRed.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: AppColors.lightRed.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              apiErrorModel.icon ?? Icons.error_outline,
              size: 18.sp,
              color: AppColors.lightRed,
            ),
          ),
          horizontalSpace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (apiErrorModel.message != null)
                  Text(
                    apiErrorModel.message!,
                    style: AppTextStyles.font11Medium.copyWith(
                      color: AppColors.lightRed,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                if (apiErrorModel.statusCode != null) ...[
                  verticalSpace(2),
                  Text(
                    'Error Code: ${apiErrorModel.statusCode}',
                    style: AppTextStyles.font11Regular.copyWith(
                      color: AppColors.lightRed.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ],
            ),
          ),
          horizontalSpace(8),
          IconButton(
            onPressed: onRetry,
            icon: Icon(
              Icons.refresh_rounded,
              color: AppColors.lightRed,
              size: 22.sp,
            ),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.lightRed.withValues(alpha: 0.15),
              padding: EdgeInsets.all(8.r),
              minimumSize: Size(36.w, 36.h),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            tooltip: 'Retry',
          ),
        ],
      ),
    );
  }
}
