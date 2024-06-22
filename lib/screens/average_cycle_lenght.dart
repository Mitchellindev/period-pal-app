import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/widgets/button_widget.dart';
import 'package:period_pal/widgets/outline_button_widget.dart';

class AverageCycleLenghtScreen extends StatelessWidget {
  const AverageCycleLenghtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Select your average cycle length days',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.purple,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Typically, how long is your menstrual cycle?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.textGrey,
              ),
            ),
            const SizedBox(height: 20),
            OutlineButtonWidget(
              label: '24 Days',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            OutlineButtonWidget(
              label: '25 Days',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            OutlineButtonWidget(
              label: '26 Days',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            OutlineButtonWidget(
              label: '27 Days',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            OutlineButtonWidget(
              label: '28 Days',
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            OutlineButtonWidget(
              label: 'Others',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              label: 'Next',
              backgroundColor: AppColors.purple,
              onPressed: () {},
              textColor: AppColors.white,
              borderColor: AppColors.purple,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
