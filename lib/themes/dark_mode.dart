import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF0D7377),
    primary: const Color(0xFF14FFEC),
    secondary: const Color(0xFF323232),
    inversePrimary: const Color(0xFFFFC93C),
  ).copyWith(surface: const Color(0xFF212121)),
);
