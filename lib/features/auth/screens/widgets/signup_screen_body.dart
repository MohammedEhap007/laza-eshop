import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_blur_text.dart';
import '../../../../core/widgets/custom_text_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

import 'terms_and_conditions_text.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const CustomAppBar(),
            const CustomBlurText(text: 'Sign Up'),
            verticalSpace(155),
            CustomTextFormField(
              hintText: 'Username',
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              validator: (value) {
                return null;
              },
            ),
            verticalSpace(20),
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
            verticalSpace(165),
            const TermsAndConditionsText(),
            verticalSpace(25),
            CustomTextButton(
              text: 'Sign Up',
              onPressed: () {},
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
