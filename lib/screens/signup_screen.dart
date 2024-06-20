import 'package:flutter/material.dart';
import 'package:period_pal/config/router/route.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/widgets/button_widget.dart';
import 'package:period_pal/widgets/horizontal_divider.dart';
import 'package:period_pal/widgets/icon_button_widget.dart';
import 'package:period_pal/widgets/input_widget.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Create An Account',
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
                  'Welcome To your Period Pal!',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  'Sign Up to get started.',
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
                CheckboxListTile(
                  value: false,
                  onChanged: (val) {},
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.all(0),
                  title: Transform.translate(
                    offset: const Offset(-10, 0),
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'I agree to Period Pal ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.purple,
                            ),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of use',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  label: 'Get Started',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.purple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
