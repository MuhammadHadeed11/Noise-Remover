import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noise_remover/Authentication/controller/signup_controller.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final controller2 = Get.put(SignUpController());
    final formkey = GlobalKey<FormState>();
    return ListView(children: [
      Column(
        children: [
          Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
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
                          color: NColors.primaryColor,
                          fontWeight: FontWeight.w400),
                    )),
                    const SizedBox(
                      height: 25,
                    ),
                    Obx(
                      () => TextFormField(
                        validator: (value) {
                          controller2.validUserName(value);
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: NTexts.username,
                          fillColor: controller2.isRed.value
                              ? NColors.elevatedBackgroudcolor
                              : Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => TextFormField(
                        validator: (value) {
                          controller2.validateEmailSignup(value);
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: NTexts.email,
                          fillColor: controller2.isRed.value
                              ? NColors.elevatedBackgroudcolor
                              : Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => TextFormField(
                        validator: (value) {
                          controller2.validatePasswordSignup(value);
                          return null;
                        },
                        controller: textController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: NTexts.password,
                          fillColor: controller2.isRed.value
                              ? NColors.elevatedBackgroudcolor
                              : Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => TextFormField(
                        validator: (value) {
                          controller2.validConfirmPassword(value);
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: NTexts.confirmPassword,
                          fillColor: controller2.isRed.value
                              ? NColors.elevatedBackgroudcolor
                              : Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              NTexts.forgetPassword,
                              // textAlign: TextAlign.start,
                              style: TextStyle(color: NColors.primaryColor),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {}
                          },
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: NColors.primaryColor),
                              backgroundColor: NColors.primaryColor),
                          child: const Text(
                            NTexts.signup,
                            style: TextStyle(fontSize: 14),
                          )),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: Text(NTexts.detail,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400))),
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
