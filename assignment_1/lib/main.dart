// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:assignment_1/StartPage.dart';
import 'package:assignment_1/loginPage.dart';
import 'package:assignment_1/registerEmailPage.dart';
import 'package:assignment_1/registerPhonePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF777a83),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(
            0xFF777a83,
            <int, Color>{
              50: Color(0xFF777a83),
              100: Color(0xFF777a83),
              200: Color(0xFF777a83),
              300: Color(0xFF777a83),
              400: Color(0xFF777a83),
              500: Color(0xFF777a83),
              600: Color(0xFF777a83),
              700: Color(0xFF777a83),
              800: Color(0xFF777a83),
              900: Color(0xFF777a83),
            },
          ),
        ).copyWith(
          secondary: Color(0xFF777a83), // Customize as needed
        ),
      ),
      home: Startpage(),
    );
  }
}
