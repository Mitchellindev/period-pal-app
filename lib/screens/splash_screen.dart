import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/screens/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: AppColors.purple,
      splash: Image.asset('assets/images/period-pal-logo.png'),
      nextScreen: const WelcomeSceen(),
      duration: 3000,
    );
  }
}
