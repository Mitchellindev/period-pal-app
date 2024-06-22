import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';

class OutlineButtonWidget extends StatelessWidget {
  const OutlineButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        elevation: 0,
        foregroundColor: const Color.fromRGBO(51, 51, 51, 1),
        backgroundColor: AppColors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
          side:
              const BorderSide(color: AppColors.teal, style: BorderStyle.solid),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
