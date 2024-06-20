import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = AppColors.inputGrey;
    const hintColor = AppColors.textGrey;

    const border = OutlineInputBorder(
      borderSide: BorderSide(
          color: primaryColor,
          width: 1.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
    );
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: const Color.fromRGBO(243, 242, 242, 1),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: hintColor,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        focusedBorder: border,
        enabledBorder: border,
        filled: true,
      ),
    );
  }
}
