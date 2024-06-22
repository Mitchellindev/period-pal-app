import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';

class SettingUpAccountScreen extends StatelessWidget {
  const SettingUpAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/images/loading-image.png'),
            const SizedBox(height: 44),
            const Text(
              'Setting up your \n account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'We’re creating your account and personalizing your experience',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
