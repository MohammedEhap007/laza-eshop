import 'package:flutter/material.dart';
import 'package:laza_eshop/features/auth/ui/screens/widgets/verification_code_screen_body.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: VerificationCodeScreenBody()),
    );
  }
}
