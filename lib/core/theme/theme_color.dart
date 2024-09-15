import 'package:flutter/material.dart';
import 'package:note_app/core/theme/color.dart';

class ThemeApp {
  static ThemeData themeDataLight() {
    return ThemeData(
        scaffoldBackgroundColor: ColorsManager.scaffoldColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorsManager.primaryColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: ColorsManager.primaryColor,
          selectedIconTheme: IconThemeData(
            size: 35,
          ),
          unselectedIconTheme: IconThemeData(
            size: 35,
          ),
        ));
  }
}
