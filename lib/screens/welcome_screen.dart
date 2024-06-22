import 'package:flutter/material.dart';
import 'package:period_pal/config/router/route.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/widgets/button_widget.dart';

class WelcomeSceen extends StatelessWidget {
  const WelcomeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/flower.png'),
              const SizedBox(height: 55),
              const Text(
                'Welcome To Period Pal!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: AppColors.purple,
                ),
              ),
              const Text(
                'Your cycle buddy...',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 79),
              ButtonWidget(
                label: 'Let’s get started',
                backgroundColor: AppColors.purple,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signup);
                },
                textColor: AppColors.white,
                borderColor: AppColors.purple,
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
