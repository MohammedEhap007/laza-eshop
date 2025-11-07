import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import 'package:laza_eshop/features/auth/ui/screens/widgets/verification_code_bloc_listener.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/widgets/custom_text_button.dart';
import '../../cubits/verify_email_cubit/verify_email_cubit.dart';
import '../../cubits/verify_email_cubit/verify_email_state.dart';
import 'resend_code_text.dart';

class VerificationCodeScreenBody extends StatefulWidget {
  final String email;

  const VerificationCodeScreenBody({
    super.key,
    required this.email,
  });

  @override
  State<VerificationCodeScreenBody> createState() =>
      _VerificationCodeScreenBodyState();
}

class _VerificationCodeScreenBodyState
    extends State<VerificationCodeScreenBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController verificationCodeController;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    verificationCodeController = TextEditingController();
  }

  @override
  void dispose() {
    verificationCodeController.dispose();
    super.dispose();
  }

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
            OtpFields(
              formKey: formKey,
              verificationCodeController: verificationCodeController,
            ),
            verticalSpace(165),
            ResendCodeText(onResend: () {}),
            verticalSpace(25),
            BlocBuilder<VerifyEmailCubit, VerifyEmailState>(
              buildWhen: (previous, current) =>
                  current is VerifyEmailLoading ||
                  previous is VerifyEmailLoading,
              builder: (context, state) {
                return CustomTextButton(
                  isLoading: state is VerifyEmailLoading,
                  text: 'Confirm Code',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<VerifyEmailCubit>().verifyEmail(
                        email: widget.email,
                        verificationCode: verificationCodeController.text
                            .trim(),
                      );
                    }
                  },
                );
              },
            ),
            verticalSpace(15),
            const VerificationCodeBlocListener(),
          ],
        ),
      ),
    );
  }
}
