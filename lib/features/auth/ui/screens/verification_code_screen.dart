import 'package:flutter/material.dart';

import 'widgets/verification_code/verification_code_screen_body.dart';

class VerificationCodeScreen extends StatelessWidget {
  final String email;

  const VerificationCodeScreen({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VerificationCodeScreenBody(email: email),
      ),
    );
  }
}
