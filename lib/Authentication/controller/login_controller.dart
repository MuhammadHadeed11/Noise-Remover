import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  var isRedEmail = false.obs;
  var isRedPassword = false.obs;
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      isRedEmail.value = true;
    } else if (!emailRegExp.hasMatch(value)) {
      // Regular expression for email validation
      isRedEmail.value = true;
    } else {
      isRedEmail.value = false;
    }
    return null;
  }

  validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      isRedPassword.value = true;
    } else {
      isRedPassword.value = false;
    }
  }
}
