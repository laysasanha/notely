import 'package:flutter/material.dart';

class AppTextStyles {
  //Base Padrao
  static final TextStyle _baseStyle = TextStyle(
    fontFamily: 'Nunito',
  );
  //Text Black
  static TextStyle displayLarge = _baseStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );

  static TextStyle displayMedium = _baseStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w900
  );

  static TextStyle displaySmall = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w900
  );

  static TextStyle headlineSmall = _baseStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w900
  );

  //Text Bold
  static TextStyle titleLarge = _baseStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textMedium = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textSmall = _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textVerySmall = _baseStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
}