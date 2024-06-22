import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';

class HorizontalDividerWidget extends StatelessWidget {
  const HorizontalDividerWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const Divider(
        color: AppColors.dividerColor,
      ),
    );
  }
}
