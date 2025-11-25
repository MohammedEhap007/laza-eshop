import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';

class OtpFields extends StatelessWidget {
  const OtpFields({
    super.key,
    required this.formKey,
    required this.verificationCodeController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController verificationCodeController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Pinput(
        controller: verificationCodeController,
        length: 6,
        pinAnimationType: PinAnimationType.slide,
        validator: (value) {
          if (value == null || value.isEmpty || value.length < 6) {
            return 'Please enter the 6-digit code';
          }
          return null;
        },
        separatorBuilder: (index) {
          return SizedBox(width: 10.w);
        },
        defaultPinTheme: PinTheme(
          width: 55.w,
          height: 75.h,
          textStyle: AppTextStyles.font22Medium.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            border: BoxBorder.all(color: const Color(0xFFE7E8EA)),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        focusedPinTheme: PinTheme(
          width: 55.w,
          height: 75.h,
          textStyle: AppTextStyles.font22Medium.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            border: BoxBorder.all(color: AppColors.purple),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        errorPinTheme: PinTheme(
          width: 55.w,
          height: 75.h,
          textStyle: AppTextStyles.font22Medium.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            border: BoxBorder.all(color: AppColors.red),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
