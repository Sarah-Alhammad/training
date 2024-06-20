import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/routes.dart';

abstract class LoginController extends GetxController {
  login();

  goToSignUp();

  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController mobileNumber;

  @override
  login() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    mobileNumber = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    mobileNumber.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
