import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();

  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.toNamed(AppRoute.authEnticated);
  }

  @override
  void onInit() {
    email = TextEditingController();
  }

  @override
  void dispose() {
    email.dispose();
  }
}
