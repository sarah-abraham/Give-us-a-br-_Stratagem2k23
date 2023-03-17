// ignore_for_file: prefer_const_constructors

import 'package:care_plus/LoginPage.dart';
import 'package:care_plus/RegLog.dart';
import 'package:care_plus/RegisterPage.dart';
import 'package:flutter/material.dart';

import 'SplashScreen.dart';
import 'router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      routes: {
        "/": (context) => SplashScreen(),
        "regLog": (context) => RegLog(),
        "regPage": (context) => RegistrationPage(),
        "loginPage": (context) => LoginPage()
      },
    );
  }
}
