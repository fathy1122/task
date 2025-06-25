import 'package:flutter/material.dart';

class AppTheme {
 static ThemeData getThemeData(
      {required Color primary, required Brightness brightness, required Color secondary}) {
    return ThemeData(
        colorScheme: ColorScheme(
            brightness: brightness,
            primary: primary,
            onPrimary: secondary,
            secondary: secondary,
            onSecondary: primary,
            error: Colors.red,
            onError: Colors.white,
            surface: secondary,
            onSurface: primary,

        ));
  }
}
