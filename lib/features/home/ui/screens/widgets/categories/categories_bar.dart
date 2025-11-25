import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Choose Category',
          style: AppTextStyles.font16Medium,
        ),
        const Spacer(),
        Text(
          'View All',
          style: AppTextStyles.font12Regular.copyWith(
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}
