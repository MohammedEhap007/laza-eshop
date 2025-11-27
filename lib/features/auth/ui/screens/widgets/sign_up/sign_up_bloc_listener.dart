import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/utils/app_extensions.dart';
import '../../../../../../core/widgets/custom_app_error_dialog.dart';
import '../../../../../../core/widgets/custom_app_success_dialog.dart';
import '../../../cubits/sign_up_cubit/sign_up_cubit.dart';
import '../../../cubits/sign_up_cubit/sign_up_state.dart';

class SignUpBlocListener extends StatelessWidget {
  final TextEditingController emailController;

  const SignUpBlocListener({
    super.key,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpSuccess || current is SignUpFailure,
      listener: (context, state) {
        state.whenOrNull(
          signUpSuccess: (data) {
            showSuccessDialog(
              context,
              data.message,
              onConfirm: () {
                context.pushNamed(
                  Routes.verificationCodeScreen,
                  arguments: emailController.text.trim(),
                );
              },
            );
          },
          signUpFailure: (error) {
            showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
