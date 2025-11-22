import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_eshop/core/widgets/custom_app_success_dialog.dart';

import '../../../../../core/widgets/custom_app_error_dialog.dart';
import '../../cubits/resend_otp_cubit/resend_otp_cubit.dart';
import '../../cubits/resend_otp_cubit/resend_otp_state.dart';

class ResendOtpBlocListener extends StatelessWidget {
  const ResendOtpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResendOtpCubit, ResendOtpState>(
      listenWhen: (previous, current) =>
          current is ResendOtpSuccess || current is ResendOtpFailure,
      listener: (context, state) {
        state.whenOrNull(
          resendOtpSuccess: (data) {
            showSuccessDialog(context, data.message);
          },
          resendOtpFailure: (error) {
            showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
