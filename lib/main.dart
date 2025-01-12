import 'package:flutter/material.dart';
import 'package:noise_remover/Authentication/Screens/main_screen.dart';
import 'package:noise_remover/utils/themes/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Noise Remover',
      themeMode: ThemeMode.system,
      theme: NTheme.theme,
      darkTheme: NTheme.theme,
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


