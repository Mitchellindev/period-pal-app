import 'package:flutter/material.dart';

class BadgeButtonWidget extends StatelessWidget {
  const BadgeButtonWidget(
      {super.key,
      required this.label,
      required this.backgroundColor,
      required this.onPressed,
      required this.textColor,
      required this.borderColor,
      required this.width});

  final String label;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: ElevatedButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
          elevation: 0,
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          minimumSize: Size(width, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
            side: BorderSide(color: borderColor, style: BorderStyle.solid),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
