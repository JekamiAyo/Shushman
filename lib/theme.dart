import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF2F2F2),
    colorScheme: const ColorScheme.light(
      primary: Color(0xffF8F8F8),
      secondary: Color(0xffB1464A),
    ),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    ));
