import 'package:flutter/material.dart';
import 'package:period_pal/config/router/route.dart';
import 'package:period_pal/screens/create_profile_screen.dart';
import 'package:period_pal/screens/signup_screen.dart';
import 'package:period_pal/screens/splash_screen.dart';

class AppRouter {
  Route onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );
      case Routes.createProfile:
        return MaterialPageRoute(
          builder: (_) => const CreateProileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Text("Hi"),
        );
    }
  }
}