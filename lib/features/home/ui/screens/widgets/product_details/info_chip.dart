import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/app_text_styles.dart';

class InfoChip extends StatelessWidget {
  const InfoChip({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$label: ',
              style: AppTextStyles.font12Medium.copyWith(
                color: Theme.of(context).textTheme.bodySmall?.color,
              ),
            ),
            TextSpan(
              text: value,
              style: AppTextStyles.font14Medium.copyWith(
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
    );
  }
}
