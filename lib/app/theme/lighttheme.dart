import 'package:flutter/material.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/textstyle.dart';

class Lighttheme {
  static ThemeData get LightTheme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: Colorapp.primarycolor!,
        onPrimary: Colors.white,
        secondary: Colors.green,
        onSecondary: Colors.black,
        surface: Colors.grey[500]!,
        onSurface: Colors.black,
        error: Colors.red,
        onError: Colors.white,
      ),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        displayLarge: TextstyleConst.txtstyl30,
        displayMedium: TextstyleConst.txtstyl28,
        displaySmall: TextstyleConst.txtstyl26,
        headlineLarge: TextstyleConst.txtstyl20,
        headlineMedium: TextstyleConst.txtstyl18,
        headlineSmall: TextstyleConst.txtstyl16,
        titleLarge: TextstyleConst.txtstyl20,
        titleMedium: TextstyleConst.txtstyl18,
        titleSmall: TextstyleConst.txtstyl16,
        bodyLarge: TextstyleConst.txtstyl16,
        bodyMedium: TextstyleConst.txtstyl14,
        bodySmall: TextstyleConst.txtstyl13,
      ),
      useMaterial3: true,
    );
  }
}
