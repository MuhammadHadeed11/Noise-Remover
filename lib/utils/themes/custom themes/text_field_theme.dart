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
    const TextStyle(color: NColors.primary),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.red)),
    //ss
    filled: true,
    fillColor:  const Color(0xff131313),

);
}