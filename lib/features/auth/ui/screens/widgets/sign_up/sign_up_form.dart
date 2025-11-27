import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/utils/app_regex.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
import 'password_validations_text.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    setupPasswordValidationListener();
    super.initState();
  }

  void setupPasswordValidationListener() {
    widget.passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(widget.passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(widget.passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          widget.passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(widget.passwordController.text);
        hasMinLength = AppRegex.hasMinLength(widget.passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: 'Username',
            textInputAction: TextInputAction.next,
            controller: widget.usernameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a username';
              }
              return null;
            },
          ),
          verticalSpace(20),
          CustomTextFormField(
            labelText: 'Email Address',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            controller: widget.emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
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
            controller: widget.passwordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
          verticalSpace(20),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
