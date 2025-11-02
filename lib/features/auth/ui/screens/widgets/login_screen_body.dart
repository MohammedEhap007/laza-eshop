import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_eshop/core/widgets/custom_app_error_dialog.dart';

import '../../../../../core/apis/api_error_model.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_blur_text.dart';
import '../../../../../core/themes/app_colors.dart';

import 'dont_have_an_account_text.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

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
            CustomTextFormField(
              hintText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (value) {
                return null;
              },
            ),
            verticalSpace(20),
            CustomTextFormField(
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              isObscureText: true,
              validator: (value) {
                return null;
              },
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
            CustomTextButton(
              text: 'Login',
              onPressed: () {},
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
