import 'package:flutter/material.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/utils/extensions.dart';

class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Don't have an account? ",
        style: AppTextStyles.font14Regular.copyWith(
          color: AppColors.gray,
        ),
        children: [
          TextSpan(
            text: 'Sign Up',
            style: AppTextStyles.font14Medium.copyWith(
              color: context.isDarkMode() ? AppColors.white : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
