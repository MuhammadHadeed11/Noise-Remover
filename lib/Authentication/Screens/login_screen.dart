import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noise_remover/Authentication/controller/login_controller.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
final controller = Get.put(LoginController());
    final _formkey= GlobalKey<FormState>();
    return ListView(
        children:[ Column(
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
                          backgroundColor: NColors.elevatedBackgroudcolor,
                          side: const BorderSide(color: NColors.elevatedBorderColor),
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
                      const SizedBox(height: 16,),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: NColors.elevatedBackgroudcolor,
                              side: const BorderSide(color: NColors.elevatedBorderColor)),
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
                      const SizedBox(height: 25,),
                      const Center(
                          child: Text(
                            NTexts.continueWithEmail,
                            style: TextStyle(fontSize: 14,
                                color: NColors.primaryColor,),
                          )),
                      const SizedBox(height: 25,),
                      Obx(
                            ()=> TextFormField(
                          validator: (value) =>controller.validateEmail(value),

                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: NTexts.email,
                            fillColor: controller.isRed.value
                                ? NColors.errorBackgroundColor : Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Obx(
                            ()=> TextFormField(
                          validator: (value) {controller.validatePassword(value);
                          return null;},
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: NTexts.password,
                            fillColor: controller.isRed.value ? NColors.errorBackgroundColor : Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: (){}, child: const Text(NTexts.forgetPassword,
                            // textAlign: TextAlign.start,
                            style: TextStyle(color: NColors.primaryColor),)),
                        ],
                      ),
                      const SizedBox(height: 32,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          if(_formkey.currentState!.validate()){
                          }
                        },
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(color: NColors.primaryColor),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                foregroundColor: Colors.black,
                                backgroundColor: NColors.primaryColor
                            ),
                            child: const Text(NTexts.login,
                              style: TextStyle(fontSize: 14),)),
                      ),
                      const SizedBox(height: 16,),
                      const Padding(padding: EdgeInsets.only(left: 50,right: 50),
                          child: Text(NTexts.detail,textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14, color: Colors.white,
                                  fontWeight: FontWeight.w400)))
                    ],
                  ),
                )),
          ],
        ),]
    );
  }
}
