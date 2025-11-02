import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../utils/app_extensions.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? hintText;
  final String? labelText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final Function(String?) validator;
  final AutovalidateMode? autovalidateMode;

  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    this.onChanged,
    this.autovalidateMode,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      textInputAction: textInputAction,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE7E8EA),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE7E8EA),
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(24.0),
        ),
        labelStyle:
            hintStyle ??
            AppTextStyles.font12Regular.copyWith(
              color: AppColors.gray,
            ),
        hintStyle:
            hintStyle ??
            AppTextStyles.font12Regular.copyWith(
              color: AppColors.gray,
            ),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        fillColor:
            backgroundColor ??
            (context.isDarkMode()
                ? AppColors.lighterDark
                : AppColors.darkerLight),
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      obscuringCharacter: '*',
      style: AppTextStyles.font14Medium.copyWith(
        color: context.isDarkMode() ? AppColors.white : AppColors.black,
      ),
      validator: (value) {
        return validator(value);
      },
      cursorColor: AppColors.gray,
      keyboardType: keyboardType,
    );
  }
}
