import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trainingapp/controller/auth/forget_password_controller.dart';
import 'package:trainingapp/core/constant/color.dart';
import 'package:trainingapp/view/widgets/auth/logo_auth.dart';

import '../../../controller/auth/reset_password_controller.dart';
import '../../widgets/auth/custom_buttom_auth.dart';
import '../../widgets/auth/custom_textform_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    RestPasswordControllerImp controller = Get.put(RestPasswordControllerImp());
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(vertical: 18.h, horizontal: 40.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(child: LogoAuth(), height: 118.h, width: 220.w)),
            Text("Reset Password",
                style: TextStyle(
                    fontFamily: "Montaga",
                    fontSize: 20.sp,
                    color: AppColor.primaryColor,
                    height: 5)),
            Text(
              "Please Enter new Password ",
              style: TextStyle(
                fontFamily: "Montaga",
                fontSize: 20.sp,
              ),
            ),
            CustomTextFormAuth(
              myController: controller.password,
              hitText: "Password",
              iconWidget: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off_outlined,
                  color: AppColor.hintTextColorCustomFormAuth,
                ),
              ),
            ),
            CustomTextFormAuth(
              myController: controller.rePassword,
              hitText: "Confirm Password",
              iconWidget: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off_outlined,
                  color: AppColor.hintTextColorCustomFormAuth,
                ),
              ),
            ),
            CustomButtonAuth(
              colorText: AppColor.primaryColor,
              text: "save",
              onPressed: () {
                //   controller.goToVerfiyCode();
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
