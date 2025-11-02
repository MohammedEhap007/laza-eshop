import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/utils/app_regex.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class EmailAndPasswordForm extends StatefulWidget {
  const EmailAndPasswordForm({super.key});

  @override
  State<EmailAndPasswordForm> createState() => _EmailAndPasswordFormState();
}

class _EmailAndPasswordFormState extends State<EmailAndPasswordForm> {
  bool isObscureText = true;
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
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: 'Email Address',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            controller: emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),

          verticalSpace(20),
          CustomTextFormField(
            labelText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
                size: 22.sp,
              ),
            ),
            isObscureText: isObscureText,
            controller: passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
          ),
        ],
      ),
    );
  }
}
