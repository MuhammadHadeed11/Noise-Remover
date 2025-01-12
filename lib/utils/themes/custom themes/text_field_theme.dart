import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class NTextFormField{
static InputDecorationTheme inputDecorationTheme=InputDecorationTheme(
    labelStyle: const TextStyle(
        fontSize: 14, color: Colors.white),
    border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(14)),
    floatingLabelStyle:
    const TextStyle(color: NColors.primaryColor),
    filled: true,
    fillColor:  const Color(0xff131313),

);
}