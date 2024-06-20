import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/routes.dart';

abstract class RestPasswordController extends GetxController {
  resetPassword();

  goToSuccessResetPassword();
}

class RestPasswordControllerImp extends RestPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() {
    Get.toNamed(AppRoute.authEnticated);
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
  }
}
