import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imagine/firebase_options.dart';
import 'package:imagine/pages/loginpage.dart';
import 'package:imagine/themes/darkmode.dart';
import 'package:imagine/themes/lightmode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
    ),
  );
}
