import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imagine/firebase_options.dart';
import 'package:imagine/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
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
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
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
      ),
      themeMode: ThemeMode.system,
    ),
  );
}
