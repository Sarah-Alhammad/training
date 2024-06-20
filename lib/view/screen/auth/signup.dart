import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/color.dart';
import 'package:trainingapp/core/constant/imagaeasset.dart';
import 'package:trainingapp/view/widgets/auth/custom_textform_auth.dart';
import 'package:trainingapp/view/widgets/auth/logo_auth.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../widgets/auth/custom_buttom_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 40.w),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80.h),
              child: Center(
                child: Container(
                  height: 91.h,
                  width: 94.w,
                  child: ElevatedButton(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: AppColor.primaryColor,
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1.5.w, color: AppColor.primaryColor),

                      )),
                ),
              ),
            ),
            //  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined)),
            CustomTextFormAuth(
                myController: controller.userName, hitText: "User Name"),
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
            CustomTextFormAuth(
              myController: controller.confirmPassword,
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
                text: "Certificate PDF file ",
                radiusBorder: 10,
                backgroundColor: Color(0xFFFAFF8),
                width: 50,
                high: 37,
                borderColor: AppColor.borderSideColorCustomFormAuth,
                borderWidth: 1),
            CustomButtonAuth(
              colorText: AppColor.primaryColor,
              text: "Sign up",
              onPressed: () {
                controller.singUp();
              },
              radiusBorder: 25,
              backgroundColor: AppColor.buttonColorCustomButtonAuth,
              width: 318,
              high: 38,
              borderWidth: 1,
              borderColor: AppColor.customButtonAuthColorBorder,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontFamily: "Cabin",
                      fontSize: 14.sp),
                ),
                TextButton(
                    onPressed: () {
                      controller.goToSignIn();
                    },
                    child: Text(
                      " Log in ",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontFamily: "Montaga",
                          fontSize: 13.sp),
                    )),
              ],
            ),
          ],
        ), //
      ),
    );
  }
}
