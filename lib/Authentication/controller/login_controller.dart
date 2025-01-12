import 'package:get/get.dart';


class LoginController extends GetxController{

  static LoginController get instance => Get.find();

  var  isRedEmail = false.obs;
  var  isRedPassword = false.obs;



   validateEmail(String? value) {
    if (value == null || value.isEmpty) {
    isRedEmail.value =true;
    }else{
      isRedEmail.value =false;
    }
    return null;
  }

  validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      isRedPassword.value =true;
    }else{
      isRedPassword.value =false;
    }
  }

}