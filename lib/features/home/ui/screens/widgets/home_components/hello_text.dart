import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';

class HelloText extends StatelessWidget {
  const HelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello',
          style: AppTextStyles.font28SemiBold,
        ),
        Text(
          'Welcome to Laza.',
          style: AppTextStyles.font14Regular.copyWith(
            color: AppColors.gray,
          ),
        ),
      ],
    );
  }
}
