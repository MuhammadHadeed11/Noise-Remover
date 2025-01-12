import 'package:get/get.dart';

class SignUpController extends GetxController{

  static SignUpController get instance => Get.find();

  var isRedUserName=false.obs;
  var isRedEmail=false.obs;
  var isRedPassword=false.obs;
  var isRedConfirmPassword=false.obs;

  validUserName(String? value){
    if(value == null || value.isEmpty){
      isRedUserName.value = true;
    }
    else{
     isRedUserName.value=false;
    }
  }

  validateEmailSignup(String? value) {
    if (value == null || value.isEmpty) {
      isRedEmail.value =true;
    }else{
      isRedEmail.value =false;
    }
    return null;
  }

  validatePasswordSignup(String? value) {
    if (value == null || value.isEmpty) {
      isRedPassword.value =true;
    }else{
      isRedPassword.value =false;
    }
  }
  validConfirmPassword(String? value){
    if(value == null || value.isEmpty){
      isRedConfirmPassword.value=true;
    }
    else{
      isRedConfirmPassword.value=false;
    }
  }
}