import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';

class ValidationRow extends StatelessWidget {
  const ValidationRow({
    super.key,
    required this.text,
    required this.hasValidated,
  });

  final String text;
  final bool hasValidated;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.gray,
        ),
        horizontalSpace(6),
        Expanded(
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeInOut,
            style: AppTextStyles.font12Regular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: AppColors.purple,
              decorationThickness: 2.5,
              color: hasValidated
                  ? AppColors.gray
                  : Theme.of(context).colorScheme.onSurface,
            ),
            child: Text(
              text,
            ),
          ),
        ),
      ],
    );
  }
}
