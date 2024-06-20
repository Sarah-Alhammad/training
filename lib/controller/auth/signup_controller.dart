import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  singUp();

  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController mobileNumber;
  late TextEditingController confirmPassword;

  @override
  singUp() {
    Get.toNamed(AppRoute.authEnticated);
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    confirmPassword = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    mobileNumber = TextEditingController();
  }

  @override
  void dispose() {
    confirmPassword.dispose();
    userName.dispose();
    email.dispose();
    password.dispose();
    mobileNumber.dispose();
  }
}
