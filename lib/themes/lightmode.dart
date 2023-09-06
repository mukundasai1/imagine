import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white,
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    enableFeedback: true,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.black,
    elevation: 0,
    mouseCursor: MaterialStateMouseCursor.clickable,
    backgroundColor: Colors.white,
    showUnselectedLabels: false,
  ),
);
