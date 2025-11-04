import 'package:flutter/material.dart';
import 'package:laza_eshop/features/auth/ui/screens/widgets/sign_up_form.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../../core/widgets/custom_blur_text.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

import 'password_validations_text.dart';
import 'terms_and_conditions_text.dart';

class SignUpScreenBody extends StatefulWidget {
  const SignUpScreenBody({super.key});

  @override
  State<SignUpScreenBody> createState() => _SignUpScreenBodyState();
}

class _SignUpScreenBodyState extends State<SignUpScreenBody> {
  late GlobalKey<FormState> formKey;
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
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
            const CustomAppBar(),
            const CustomBlurText(text: 'Sign Up'),
            verticalSpace(155),
            SignUpForm(
              formKey: formKey,
              usernameController: usernameController,
              emailController: emailController,
              passwordController: passwordController,
            ),
            verticalSpace(50),
            const TermsAndConditionsText(),
            verticalSpace(25),
            CustomTextButton(
              text: 'Sign Up',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // TODO: Implement sign up logic
                }
              },
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
