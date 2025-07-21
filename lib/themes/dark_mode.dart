import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.grey.shade800,
    primary: Colors.grey.shade600,
    secondary: Colors.grey.shade500,
    inversePrimary: Colors.grey.shade500,
  ).copyWith(surface: Colors.grey.shade500),
);
