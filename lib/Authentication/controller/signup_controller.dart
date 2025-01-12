import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController instance =Get.find();
  var isRed=true.obs;
  validateEmailSignup(String? value) {
    if (value == null || value.isEmpty) {
      isRed.value =true;
    }else{
      isRed.value =false;
    }
    return null;
  }

  validatePasswordSignup(String? value) {
    if (value == null || value.isEmpty) {
      isRed.value =true;
    }else{
      isRed.value =false;
    }
  }
  validUserName(String? value){
    if(value == null || value.isEmpty){
      isRed.value = true;
    }
    else{
     isRed.value=false;
    }
  }
  validConfirmPassword(String? value){
    if(value == null || value.isEmpty){
      isRed.value=true;
    }
    else{
      isRed.value=false;
    }
  }
}