import 'package:get/get.dart';
import 'package:trainingapp/core/constant/routes.dart';

class SplashController extends GetxController{

  next(){
    Get.offAllNamed(AppRoute.login);

  }

}