import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(
        Colors.white,
      ),
    ),
  ),
  
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    enableFeedback: true,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.white,
    elevation: 0,
    mouseCursor: MaterialStateMouseCursor.clickable,
    backgroundColor: Colors.black,
    showUnselectedLabels: false,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.black,
    secondary: Colors.white,
    brightness: Brightness.dark,
  ),
);
