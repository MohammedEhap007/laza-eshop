import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/custom_blur_text.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../cubits/login_cubit/login_cubit.dart';
import '../../cubits/login_cubit/login_state.dart';
import 'dont_have_an_account_text.dart';
import 'login_bloc_listener.dart';
import 'login_form.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
            verticalSpace(60),
            const CustomBlurText(text: 'Welcome'),
            verticalSpace(5),
            Text(
              'Please enter your data to continue',
              style: AppTextStyles.font14Regular.copyWith(
                color: AppColors.gray,
              ),
            ),
            verticalSpace(165),
            LoginForm(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
            ),
            verticalSpace(30),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.font14Regular.copyWith(
                  color: AppColors.lightRed,
                ),
              ),
            ),
            verticalSpace(145),
            const DontHaveAnAccountText(),
            verticalSpace(25),
            BlocBuilder<LoginCubit, LoginState>(
              buildWhen: (previous, current) =>
                  current is LoginLoading || previous is LoginLoading,
              builder: (context, state) {
                return CustomTextButton(
                  isLoading: state is LoginLoading,
                  text: 'Login',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.read<LoginCubit>().login(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                    }
                  },
                );
              },
            ),
            verticalSpace(15),
            const LoginBlocListener(),
          ],
        ),
      ),
    );
  }
}
