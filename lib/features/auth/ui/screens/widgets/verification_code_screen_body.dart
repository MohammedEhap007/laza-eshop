import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_eshop/core/helpers/spacing.dart';
import 'package:laza_eshop/core/themes/app_assets.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';
import 'package:laza_eshop/core/utils/app_logger.dart';
import 'package:laza_eshop/core/widgets/custom_app_bar.dart';
import 'package:laza_eshop/core/widgets/custom_blur_text.dart';
import 'package:laza_eshop/features/auth/ui/screens/widgets/otp_fields.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/widgets/custom_text_button.dart';
import 'resend_code_text.dart';

class VerificationCodeScreenBody extends StatelessWidget {
  final String email;

  const VerificationCodeScreenBody({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const CustomAppBar(),
            verticalSpace(15),
            const CustomBlurText(text: 'Verification Code'),
            verticalSpace(70),
            SvgPicture.asset(
              AppAssets.imagesVerificationCloud,
              width: 225.w,
              height: 165.h,
            ),
            verticalSpace(60),
            const OtpFields(),
            verticalSpace(165),
            ResendCodeText(onResend: () {}),
            verticalSpace(25),
            CustomTextButton(
              text: 'Confirm Code',
              onPressed: () {},
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
