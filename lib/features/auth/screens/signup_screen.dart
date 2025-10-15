import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_blur_text.dart';
import '../../../core/widgets/custom_text_form_field.dart';

import 'widgets/signup_screen_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignupScreenBody()),
    );
  }
}
