import 'package:flutter/material.dart';
import 'package:noise_remover/utils/themes/custom%20themes/elevated_button_theme.dart';
import 'package:noise_remover/utils/themes/custom%20themes/text_field_theme.dart';

class NTheme{
  static ThemeData theme=ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    elevatedButtonTheme: NElevatedButtonThem.elevatedButtonTheme,
    inputDecorationTheme: NTextFormField.inputDecorationTheme
  );
}