import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/widgets/button_widget.dart';
import 'package:period_pal/widgets/input_widget.dart';

class CreateProileScreen extends StatelessWidget {
  CreateProileScreen({super.key});

  final firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 62),
                Image.asset('assets/images/love.png'),
                const SizedBox(height: 32),
                const Text(
                  'Create a profile!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: AppColors.purple,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Tell us your first name.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                const Text(
                  'Let’s get to know you.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 62),
                TextFieldWidget(
                  controller: firstNameController,
                  obscureText: false,
                  hintText: 'First name',
                ),
                const SizedBox(height: 62),
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
        ),
      ),
    );
  }
}
