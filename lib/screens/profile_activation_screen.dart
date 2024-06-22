import 'package:flutter/material.dart';
import 'package:period_pal/config/router/route.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/screens/average_cycle_lenght.dart';
import 'package:period_pal/screens/create_profile_screen.dart';
import 'package:period_pal/screens/date_of_birth_screen.dart';
import 'package:period_pal/screens/last_period_date_screen.dart';
import 'package:period_pal/screens/setting_up_account_Screen.dart';
import 'package:period_pal/screens/user_goal_screen.dart';
import 'package:period_pal/widgets/badge_button_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileActivationScreen extends StatefulWidget {
  const ProfileActivationScreen({super.key});

  @override
  State<ProfileActivationScreen> createState() =>
      _ProfileActivationScreenState();
}

class _ProfileActivationScreenState extends State<ProfileActivationScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          onLastPage
              ? const SizedBox()
              : BadgeButtonWidget(
                  label: 'Skip',
                  backgroundColor: AppColors.lightPurple,
                  onPressed: () {
                    onLastPage
                        ? Navigator.pushNamed(context, Routes.signIn)
                        : _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                  },
                  textColor: AppColors.white,
                  borderColor: AppColors.lightPurple,
                  width: 66.0,
                ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            //pageview
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 5);
                });
              },
              controller: _controller,
              scrollDirection: Axis.horizontal,
              children: [
                CreateProileScreen(),
                const DateOfBirthScreen(),
                const UserGoalScreen(),
                const LastPeriodDateScreen(),
                const AverageCycleLenghtScreen(),
                const SettingUpAccountScreen(),
              ],
            ),

            //dot indicators
            Container(
              alignment: const Alignment(0, 0.9),
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 6,
                    effect: const WormEffect(
                      activeDotColor: AppColors.purple,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
