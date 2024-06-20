import 'package:flutter/material.dart';
import 'package:period_pal/core/contants/app_colors.dart';
import 'package:period_pal/screens/average_cycle_lenght.dart';
import 'package:period_pal/screens/create_profile_screen.dart';
import 'package:period_pal/screens/date_of_birth_screen.dart';
import 'package:period_pal/screens/last_period_date_screen.dart';
import 'package:period_pal/screens/setting_up_account_Screen.dart';
import 'package:period_pal/screens/user_goal_screen.dart';
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
      appBar: AppBar(),
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
              children: const [
                CreateProileScreen(),
                DateOfBirthScreen(),
                UserGoalScreen(),
                LastPeriodDateScreen(),
                AverageCycleLenghtScreen(),
                SettingUpAccountScreen(),
              ],
            ),

            //dot indicators
            Container(
              alignment: const Alignment(0, 0.85),
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
                  // onLastPage
                  //     ? GestureDetector(
                  //         onTap: () {
                  //           // Navigator.pushNamed(context, Routes.welcomeScreen);
                  //         },
                  //         child: const Text(
                  //           'Done',
                  //           style: TextStyle(fontSize: 16),
                  //         ),
                  //       )
                  //     : GestureDetector(
                  //         onTap: () {
                  //           _controller.nextPage(
                  //               duration: const Duration(milliseconds: 500),
                  //               curve: Curves.easeIn);
                  //         },
                  //         child: const Text('Next'),
                  //       )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
