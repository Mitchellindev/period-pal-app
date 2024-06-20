import 'package:flutter/material.dart';
import 'package:period_pal/config/router/app_route.dart';
import 'package:period_pal/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp(
      onGenerateRoute: appRouter.onGeneratedRoute,
      title: 'Period Pal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
