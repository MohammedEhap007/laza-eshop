import 'package:flutter/material.dart';
import '../utils/extensions.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';

class CustomBlurText extends StatelessWidget {
  const CustomBlurText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.font28SemiBold.copyWith(
        color: context.isDarkMode() ? AppColors.white : AppColors.black,
        shadows: [
          Shadow(
            color: context.isDarkMode()
                ? AppColors.white.withValues(alpha: 0.25)
                : AppColors.black.withValues(alpha: 0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
    );
  }
}
