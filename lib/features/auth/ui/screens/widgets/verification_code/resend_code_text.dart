import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/themes/app_text_styles.dart';

class ResendCodeText extends StatefulWidget {
  final VoidCallback onResend;
  final int countdownSeconds;

  const ResendCodeText({
    super.key,
    required this.onResend,
    this.countdownSeconds = 30,
  });

  @override
  State<ResendCodeText> createState() => _ResendCodeTextState();
}

class _ResendCodeTextState extends State<ResendCodeText> {
  Timer? _timer;
  late int _remainingSeconds;
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.countdownSeconds;
    _startTimer();
  }

  // Starts the countdown timer
  void _startTimer() {
    _canResend = false;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _canResend = true;
          _timer?.cancel();
        }
      });
    });
  }

  // Handles the resend action
  void _handleResend() {
    if (_canResend) {
      setState(() {
        _remainingSeconds = widget.countdownSeconds;
      });
      _startTimer();
      widget.onResend();
    }
  }

  // Format time as MM:SS
  String _formatTime() {
    final minutes = (_remainingSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_remainingSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_canResend) {
      return GestureDetector(
        onTap: _handleResend,
        child: Text(
          'Resend',
          style: AppTextStyles.font14Medium.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            decoration: TextDecoration.underline,
            decorationColor: Theme.of(context).colorScheme.onSurface,
            decorationThickness: 0.5,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      );
    }

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: _formatTime(),
            style: AppTextStyles.font14Medium.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          TextSpan(
            text: ' resend confirmation code.',
            style: AppTextStyles.font14Regular.copyWith(
              color: AppColors.gray,
            ),
          ),
        ],
      ),
    );
  }
}
