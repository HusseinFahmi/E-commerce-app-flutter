import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.grey.shade900,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ).copyWith(surface: Colors.grey.shade700),
);
