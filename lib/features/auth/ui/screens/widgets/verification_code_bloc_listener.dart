import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_eshop/core/utils/app_extensions.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/widgets/custom_app_error_dialog.dart';
import '../../../../../core/widgets/custom_app_success_dialog.dart';
import '../../cubits/verify_email_cubit/verify_email_cubit.dart';
import '../../cubits/verify_email_cubit/verify_email_state.dart';

class VerificationCodeBlocListener extends StatelessWidget {
  const VerificationCodeBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyEmailCubit, VerifyEmailState>(
      listenWhen: (previous, current) =>
          current is VerifyEmailSuccess || current is VerifyEmailFailure,
      listener: (context, state) {
        state.whenOrNull(
          verifyEmailSuccess: (data) {
            showSuccessDialog(
              context,
              data.message,
              onConfirm: () {
                context.pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  predicate: (_) => false,
                );
              },
            );
          },
          verifyEmailFailure: (error) {
            showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
