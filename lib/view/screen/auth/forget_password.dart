import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trainingapp/controller/auth/forget_password_controller.dart';
import 'package:trainingapp/core/constant/color.dart';
import 'package:trainingapp/view/widgets/auth/logo_auth.dart';

import '../../widgets/auth/custom_buttom_auth.dart';
import '../../widgets/auth/custom_textform_auth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(vertical: 18.h, horizontal: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(child: LogoAuth(), height: 118.h, width: 220.w)),
            Text("Forget Password",
                style: TextStyle(
                    fontFamily: "Montaga",
                    fontSize: 25.sp,
                    color: AppColor.primaryColor,
                    height: 5)),
            Text(
              "Check Email",
              style: TextStyle(
                fontFamily: "Montaga",
                fontSize: 20.sp,
              ),
            ),
            CustomTextFormAuth(
              myController: controller.email,
              hitText: "email",
              iconWidget: Image.asset("assets/images/edit_icon.png"),
            ),
            CustomButtonAuth(
              colorText: AppColor.primaryColor,
              text: "Check",
              onPressed: () {
                controller.goToVerfiyCode();
              },
              radiusBorder: 25,
              backgroundColor: AppColor.buttonColorCustomButtonAuth,
              width: 318.w,
              high: 38.h,
              borderWidth: 1,
              borderColor: AppColor.customButtonAuthColorBorder,
            ),
          ],
        ),
      ),
    );
  }
}
