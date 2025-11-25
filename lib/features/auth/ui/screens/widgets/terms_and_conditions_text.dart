import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text:
            'By creating your account you confirm that you are agree with our ',
        style: AppTextStyles.font12Regular.copyWith(
          color: AppColors.gray,
        ),
        children: [
          TextSpan(
            text: 'Terms & Conditions',
            // You can add recognizer here for tap events if needed
            style: AppTextStyles.font12Medium.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
