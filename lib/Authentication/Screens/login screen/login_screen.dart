import 'package:flutter/material.dart';
import 'package:noise_remover/Authentication/Screens/login%20screen/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                LoginForm(),
           ]

    );
  }
}

