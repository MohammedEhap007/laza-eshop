import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_blur_text.dart';

import '../../../../core/themes/app_colors.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const CustomAppBar(),
          verticalSpace(15),
          const CustomBlurText(text: 'Welcome'),
          verticalSpace(5),
          Text(
            'Please enter your data to continue',
            style: AppTextStyles.font14Regular.copyWith(color: AppColors.gray),
          ),
          verticalSpace(165),
        ],
      ),
    );
  }
}
