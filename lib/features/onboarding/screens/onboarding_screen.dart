import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/app_assets.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/utils/extensions.dart';

import 'widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.isDarkMode()
          ? AppColors.mainDark
          : AppColors.purple,
      body: const OnboardingScreenBody(),
    );
  }
}
