import 'package:flutter/material.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/textstyle.dart';

class DarkTheme {
  static ThemeData get darktheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colorapp.primarycolor!, brightness: Brightness.dark),
      brightness: Brightness.dark,
      textTheme: TextTheme(
        displayLarge: TextstyleConst.txtstyl30,
        displayMedium: TextstyleConst.txtstyl25,
        displaySmall: TextstyleConst.txtstyl22,
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
