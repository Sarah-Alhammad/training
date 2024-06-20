import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:trainingapp/core/constant/imagaeasset.dart';

import '../../controller/splash_controller.dart';
import '../../core/constant/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoute.login);
    });
    Get.put(SplashController());
    return Scaffold(
      body: Center(
          child: Image.asset(
            AppImageAsset.logoAppImage,
            height: 402.h,
            width: 495.w,
          )),
    );
  }
}
