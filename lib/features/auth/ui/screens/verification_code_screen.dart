import 'package:flutter/material.dart';
import 'package:laza_eshop/features/auth/ui/screens/widgets/verification_code_screen_body.dart';

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
