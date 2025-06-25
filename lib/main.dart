import 'package:flutter/material.dart';
import 'package:task/core/theme/app_theme.dart';
import 'package:task/presentaion/home/screen/home_screen.dart';

import 'core/theme/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getThemeData(
          primary: AppColors.primary,
          secondary: AppColors.white,
          brightness: Brightness.light,

      ),

      routes: {

        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
