import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:noise_remover/utils/themes/theme.dart';
import 'package:flutter/services.dart';

import 'Authentication/Screens/main screen/main_screen.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) =>const MyApp(),));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

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
        debugShowCheckedModeBanner: false,
      home:  MainScreen(),
    );
  }
}


