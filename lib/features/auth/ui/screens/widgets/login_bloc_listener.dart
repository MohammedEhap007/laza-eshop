import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/routes/routes.dart';
import '../../../../../core/utils/app_extensions.dart';
import '../../../../../core/widgets/custom_app_error_dialog.dart';
import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/helpers/cache_helper_keys.dart';
import '../../cubits/login_cubit/login_cubit.dart';
import '../../cubits/login_cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginSuccess || current is LoginFailure,
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (data) {
            context.pushNamedAndRemoveUntil(
              Routes.homeScreen,
              predicate: (_) => false,
            );
            CacheHelper.setData(
              key: CacheHelperKeys.login,
              value: true,
            );
            CacheHelper.setSecureData(
              key: CacheHelperKeys.accessToken,
              value: data.accessToken,
            );
            CacheHelper.setSecureData(
              key: CacheHelperKeys.refreshToken,
              value: data.refreshToken,
            );
          },
          loginFailure: (error) {
            showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
