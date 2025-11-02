import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/helpers/cache_helper_keys.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routes/routes.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/utils/app_extensions.dart';
import 'onboarding_text_button.dart';

class OnboardingBox extends StatefulWidget {
  const OnboardingBox({super.key});

  @override
  State<OnboardingBox> createState() => _OnboardingBoxState();
}

class _OnboardingBoxState extends State<OnboardingBox> {
  bool _isManSelected = true;

  void _selectGender(bool isMan) {
    setState(() {
      _isManSelected = isMan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      height: 245.h,
      decoration: BoxDecoration(
        color: context.isDarkMode() ? AppColors.lighterDark : Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          verticalSpace(25),
          Text(
            'Look Good, Feel Good',
            style: AppTextStyles.font24SemiBold.copyWith(
              color: context.isDarkMode() ? AppColors.white : AppColors.black,
            ),
          ),
          verticalSpace(10),
          Text(
            'Create your individual & unique style and look amazing everyday.',
            textAlign: TextAlign.center,
            style: AppTextStyles.font14Regular.copyWith(
              color: AppColors.gray,
            ),
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnboardingTextButton(
                buttonText: 'Men',
                isSelected: _isManSelected,
                onPressed: () => _selectGender(true),
              ),
              horizontalSpace(10),
              OnboardingTextButton(
                buttonText: 'Women',
                isSelected: !_isManSelected,
                onPressed: () => _selectGender(false),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(vertical: 20),
            child: InkWell(
              onTap: () {
                context.pushReplacementNamed(Routes.loginScreen);
                CacheHelper.setData(
                  key: CacheHelperKeys.onboarding,
                  value: true,
                );
              },
              child: Text(
                'Skip',
                style: AppTextStyles.font16Medium.copyWith(
                  color: AppColors.gray,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
