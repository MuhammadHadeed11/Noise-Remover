import 'package:flutter/material.dart';
import 'package:noise_remover/utils/validation/validation.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/texts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    String? errorMassage;
    final _formkey = GlobalKey<FormState>();
    return ListView(children: [
      Column(
        children: [
          Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.only(top: 16,left: 32,right: 32),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff131313),
                        side: const BorderSide(color: Color(0xff2A2A2A)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(NImages.apple),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(NTexts.apple)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xff131313),
                            side: const BorderSide(color: Color(0xff2A2A2A))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(NImages.google),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(NTexts.google)
                          ],
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    const Center(
                        child: Text(
                      NTexts.continueWithEmail,
                      style: TextStyle(
                          fontSize: 14,
                          color: NColors.primary,
                          fontWeight: FontWeight.w400),
                    )),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      validator: (errorMassage) =>NValidation.validateEmptyText(errorMassage),
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: NTexts.username,
                        fillColor: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      validator: (value)=> NValidation.validateEmail(value),
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: NTexts.email,
                          ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      validator: (value)=> NValidation.validatePassword(value),
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: NTexts.password,
                          ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      validator: (value)=> NValidation.validatePassword(value),
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          labelText: NTexts.confirmPassword,
                          ),
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child: const Text(NTexts.forgetPassword,
                          // textAlign: TextAlign.start,
                          style: TextStyle(color: NColors.primary),)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if(_formkey.currentState!.validate()){
                          }
    },
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: NColors.primary),
                              backgroundColor: NColors.primary),
                          child: const Text(
                            NTexts.signup,
                            style: TextStyle(fontSize: 14),
                          )),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 50,right: 50),
                        child: Text(NTexts.detail,textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w400))),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              )),
        ],
      ),
    ]);
  }
}
