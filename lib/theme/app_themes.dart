import 'package:criar_challenge/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.lightMainBlue,
      brightness: Brightness.light,
      useMaterial3: true);

  static final darkTheme = ThemeData(
    primaryColor: AppColors.darkMainGreen,
    brightness: Brightness.dark,
  );
}
