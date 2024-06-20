import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/color.dart';

import 'package:trainingapp/view/widgets/auth/custom_textform_auth.dart';
import 'package:trainingapp/view/widgets/auth/logo_auth.dart';

import '../../../controller/auth/login_controller.dart';
import '../../widgets/auth/custom_buttom_auth.dart';

class Login extends StatelessWidget {
   Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(vertical: 18.h, horizontal: 40.w),
        child: ListView(
          children: [
            LogoAuth(),
            CustomTextFormAuth(
              myController: controller.email,
              hitText: "email",
              iconWidget: Image.asset("assets/images/edit_icon.png"),
            ),
            CustomTextFormAuth(
                myController: controller.mobileNumber,
                hitText: "Mobile Number"),
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
            CustomButtonAuth(
              colorText: AppColor.primaryColor,
              text: "Log in",
              onPressed: () {},
              radiusBorder: 25,
              backgroundColor: AppColor.buttonColorCustomButtonAuth,
              width: 318.w,
              high: 38.h,
              borderWidth: 1,
              borderColor: AppColor.customButtonAuthColorBorder,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child:  Text(
                      "Remember me",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontFamily: "Montaga",
                          fontSize: 13.sp),
                    )),
                TextButton(
                    onPressed: () {
                      controller.goToForgetPassword();
                    },
                    child:  Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontFamily: "Cabin",
                          fontSize: 14.sp),
                    )),
              ],
            ),
             SizedBox(
              height: 70.h,
            ),
            CustomButtonAuth(
              colorText: AppColor.primaryColor,
              text: "Create new Account",
              radiusBorder: 50,
              backgroundColor: AppColor.buttonColorCustomButtonAuth,
              width: 318.w,
              high: 38.h,
              borderColor: AppColor.hintTextColorCustomFormAuth,
              borderWidth: 3,
              onPressed: () {
                controller.goToSignUp();
              },
            )
          ],
        ),
      ),
    );
  }
}
