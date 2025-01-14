import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/texts.dart';
import '../../../controller/signup_controller.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
  });
  final controller = Get.put(SignUpController());
  final formkey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formkey,
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
                  validator: (value) =>controller.validUserName(value),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: NTexts.username,
                    focusedBorder: controller.isRedUserName.value
                        ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    enabledBorder: controller.isRedUserName.value
                        ?OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    fillColor: controller.isRedUserName.value
                        ? NColors.errorBackgroundColor : NColors.elevatedBackgroudcolor,
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Obx(
                    ()=> TextFormField(
                  validator: (value)=> controller.validateEmailSignup(value),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: NTexts.email,
                    focusedBorder: controller.isRedEmail.value
                        ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    enabledBorder: controller.isRedEmail.value
                        ?OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    fillColor: controller.isRedEmail.value
                        ? NColors.errorBackgroundColor : NColors.elevatedBackgroudcolor,
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Obx(
                    ()=> TextFormField(
                  validator: (value) =>controller.validatePasswordSignup(value),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: NTexts.password,
                    focusedBorder: controller.isRedPassword.value
                        ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    enabledBorder: controller.isRedPassword.value
                        ?OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    fillColor: controller.isRedPassword.value
                        ? NColors.errorBackgroundColor : NColors.elevatedBackgroudcolor,
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Obx(
                    ()=> TextFormField(
                  validator: (value)=> controller.validConfirmPassword(value),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: NTexts.confirmPassword,
                    focusedBorder: controller.isRedConfirmPassword.value
                        ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    enabledBorder: controller.isRedConfirmPassword.value
                        ?OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.red),):OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(width: 1, color: Colors.white),),
                    fillColor: controller.isRedConfirmPassword.value
                        ? NColors.errorBackgroundColor : NColors.elevatedBackgroudcolor,
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
                  if(formkey.currentState!.validate()){
                  }
                },
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: NColors.primaryColor),
                        foregroundColor: Colors.black,
                        backgroundColor: NColors.primaryColor
                    ),
                    child: const Text(NTexts.signup,
                      style: TextStyle(fontSize: 14),)),
              ),
              const SizedBox(height: 16,),
              const Padding(padding: EdgeInsets.only(left: 50,right: 50),
                  child: Text(NTexts.detail,textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.white,
                          fontWeight: FontWeight.w400)))
            ],
          ),
        ));
  }
}