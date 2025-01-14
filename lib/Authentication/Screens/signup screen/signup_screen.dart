import 'package:flutter/material.dart';
import 'package:noise_remover/Authentication/Screens/signup%20screen/widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            SignUpForm(),
          ],
        ),
    );
  }
}


