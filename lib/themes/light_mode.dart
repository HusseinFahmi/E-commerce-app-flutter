import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF14FFEC),
    primary: const Color(0xFF0D7177),
    secondary: const Color(0xFFF0F0F0),
    inversePrimary: const Color(0xFFFF6F3C),
  ).copyWith(surface: const Color(0xFFFFFFFF)),
);
