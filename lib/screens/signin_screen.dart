import 'package:flutter/material.dart';
import 'package:period_pal/config/router/route.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/widgets/button_widget.dart';
import 'package:period_pal/widgets/horizontal_divider.dart';
import 'package:period_pal/widgets/icon_button_widget.dart';
import 'package:period_pal/widgets/input_widget.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Log In',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: AppColors.purple,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'Login to your Period Pal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 48),
                TextFieldWidget(
                  controller: emailController,
                  obscureText: false,
                  hintText: 'Your email address',
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  controller: passwordController,
                  obscureText: false,
                  hintText: 'Password',
                ),
                const SizedBox(height: 6),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  label: 'Log In',
                  backgroundColor: AppColors.purple,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.createProfile);
                  },
                  textColor: AppColors.white,
                  borderColor: AppColors.purple,
                ),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HorizontalDivider(width: 68),
                    SizedBox(width: 12),
                    Text(
                      'Or Continue With',
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.textGrey,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 12),
                    HorizontalDivider(width: 68),
                  ],
                ),
                const SizedBox(height: 32),
                const IconButtonWidget(
                  icon: 'assets/images/apple.png',
                  label: 'Continue with Apple',
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  textColor: AppColors.white,
                ),
                const SizedBox(height: 16),
                const IconButtonWidget(
                  icon: 'assets/images/google.png',
                  label: 'Continue with Google',
                  backgroundColor: AppColors.white,
                  borderColor: AppColors.inputGrey,
                  textColor: AppColors.black,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
