import 'package:flutter/material.dart';

class NElevatedButtonThem{
  static ElevatedButtonThemeData elevatedButtonTheme= ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
  elevation: 0,
  padding: const EdgeInsets.symmetric(vertical: 18),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12)),
  foregroundColor: Colors.black,)
      );
}