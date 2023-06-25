import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 240, 88, 0);

  static final ThemeData TemaLab = ThemeData(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      cardTheme: const CardTheme(shadowColor: primary),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}