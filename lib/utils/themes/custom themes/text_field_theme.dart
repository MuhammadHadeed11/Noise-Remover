import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class NTextFormField{
static InputDecorationTheme inputDecorationTheme=const InputDecorationTheme(
    labelStyle: TextStyle(
        fontSize: 14, color: Colors.white),
    floatingLabelStyle:
    TextStyle(color: NColors.primaryColor),
    filled: true,
);
}