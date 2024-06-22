import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/widgets/button_widget.dart';
import 'package:period_pal/widgets/outline_button_widget.dart';

class UserGoalScreen extends StatelessWidget {
  const UserGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/images/purple-abstract.png'),
            const SizedBox(height: 25),
            const Text(
              'Why are you using period pal?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: AppColors.purple,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Tap on all that apply',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.textGrey,
              ),
            ),
            SizedBox(height: 20),
            OutlineButtonWidget(
              label: 'To track my period',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            OutlineButtonWidget(
              label: 'Pregnancy planning',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            OutlineButtonWidget(
              label: 'Health Monitoring',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            OutlineButtonWidget(
              label: 'Fertility checker',
              onPressed: () {},
            ),
            SizedBox(height: 20),
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
