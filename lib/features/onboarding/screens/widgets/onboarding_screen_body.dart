import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_assets.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import 'onboarding_box.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                context.isDarkMode()
                    ? AppColors.mainDark
                    : const Color(0xFFB0A3E5),
                context.isDarkMode()
                    ? AppColors.mainDark
                    : const Color(0xFF7661C5),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          width: 250.w,
          height: 250.h,
          child: Image.asset(
            context.isDarkMode()
                ? AppAssets.imagesOnboardingDarkTopEllipse
                : AppAssets.imagesOnboardingLightTopEllipse,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 380.h,
          left: 0,
          width: 148.w,
          height: 148.h,
          child: Image.asset(
            context.isDarkMode()
                ? AppAssets.imagesOnboardingDarkLeftEllipse
                : AppAssets.imagesOnboardingLightLeftEllipse,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 500.h,
          right: 0,
          width: 250.w,
          height: 250.h,
          child: Image.asset(
            context.isDarkMode()
                ? AppAssets.imagesOnboardingDarkRightEllipse
                : AppAssets.imagesOnboardingLightRightEllipse,
            fit: BoxFit.fill,
          ),
        ),
        Center(
          child: Image.asset(
            AppAssets.imagesOnboardingMan,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 15.w,
          right: 15.w,
          child: const OnboardingBox(),
        ),
      ],
    );
  }
}
