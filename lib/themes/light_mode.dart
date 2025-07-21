import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    primary: Colors.grey.shade200,
    secondary: Colors.white,

    inversePrimary: Colors.grey.shade700,
    seedColor: Colors.grey,
  ).copyWith(surface: Colors.grey.shade300),
);