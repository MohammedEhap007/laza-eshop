import 'package:flutter/material.dart';
import 'package:laza_eshop/core/themes/app_colors.dart';
import 'package:laza_eshop/core/themes/app_text_styles.dart';

import '../../../../../core/helpers/spacing.dart';
import 'validation_row.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValidationRow(
          text: 'Password must be at least 8 characters.',
          hasValidated: hasMinLength,
        ),
        verticalSpace(2),
        ValidationRow(
          text: 'Password must contain at least 1 uppercase letter.',
          hasValidated: hasUpperCase,
        ),
        verticalSpace(2),
        ValidationRow(
          text: 'Password must contain at least 1 lowercase letter.',
          hasValidated: hasLowerCase,
        ),
        verticalSpace(2),
        ValidationRow(
          text: 'Password must contain at least 1 number.',
          hasValidated: hasNumber,
        ),
        verticalSpace(2),
        ValidationRow(
          text: 'Password must contain at least 1 special character.',
          hasValidated: hasSpecialCharacters,
        ),
      ],
    );
  }
}
