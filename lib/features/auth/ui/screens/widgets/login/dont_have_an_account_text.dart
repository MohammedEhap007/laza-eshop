import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';
import '../../../../../../core/utils/app_extensions.dart';

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
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signUpScreen);
              },
            text: 'Sign Up',
            style: AppTextStyles.font14Medium.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
