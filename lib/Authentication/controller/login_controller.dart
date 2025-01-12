import 'package:get/get.dart';


class LoginController extends GetxController{

  static LoginController get instance => Get.find();

  var  isRed = false.obs;



   String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
    isRed.value =true;
    }else{
      isRed.value =false;
    }
    return null;

  }

  validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      isRed.value =true;
    }else{
      isRed.value =false;
    }
  }

}