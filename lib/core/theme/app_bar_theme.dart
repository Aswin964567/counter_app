import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppAppBarTheme {
  static const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    elevation: 2,
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}
