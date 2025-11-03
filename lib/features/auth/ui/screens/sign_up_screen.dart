import 'package:flutter/material.dart';

import 'widgets/sign_up_screen_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignupScreenBody()),
    );
  }
}
