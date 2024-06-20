import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/color.dart';
import 'package:trainingapp/view/widgets/auth/logo_auth.dart';

import '../../../controller/auth/verfiy_code_controller.dart';

// authenticated
class AuthEnticated extends StatelessWidget {
  const AuthEnticated({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodedControllerImp controller = Get.put(VerifyCodedControllerImp());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            controller.logOut();
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child:
                    Container(child: LogoAuth(), height: 118.h, width: 220.w)),
            Text("Verification Code",
                style: TextStyle(
                    fontFamily: "Montaga",
                    fontSize: 20.sp,
                    color: AppColor.primaryColor,
                    height: 5)),
            Text(
              "We have sent the verification code to\n"
              "your email address",
              style: TextStyle(
                fontFamily: "Montaga",
                fontSize: 18.sp,
              ),
            ),
            OtpTextField(
              numberOfFields: 6,
              fieldHeight: 40.h,
              fieldWidth: 40.w,

              focusedBorderColor: AppColor.primaryColor,
              cursorColor: AppColor.hintTextColorCustomFormAuth,

              borderRadius: BorderRadius.all(Radius.circular(50)),

              showFieldAsBox: true,

              onCodeChanged: (String code) {
                //handle validation or checks here
              },

              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
                // showDialog(
                //     context: context,
                //     builder: (context){
                //       return AlertDialog(
                //         title: Text("Verification Code"),
                //         content: Text('Code entered is $verificationCode'),
                //       );
                //     }
                // );
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
