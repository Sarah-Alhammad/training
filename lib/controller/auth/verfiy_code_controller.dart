import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trainingapp/core/constant/color.dart';
import 'package:trainingapp/core/constant/imagaeasset.dart';
import 'package:trainingapp/core/constant/routes.dart';
import 'package:trainingapp/view/widgets/auth/custom_buttom_auth.dart';

abstract class VerifyCodedController extends GetxController {
  checkCode();

  goToResetPassword();

  logOut();
}

class VerifyCodedControllerImp extends VerifyCodedController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.toNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {}

  @override
  void dispose() {}

  @override
  logOut() {
    Get.bottomSheet(
        Container(
          decoration:  BoxDecoration(
              color: Color(0xFFFFFDFD),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.zero,
                  bottomLeft: Radius.zero)),
          height: 375.h,
          width: 393.w,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(AppImageAsset.trueIcon),
              ),
               Text(
                "Success!",
                style: TextStyle(
                  color: AppColor.buttonColorCustomButtonAuth,
                  fontSize: 22.sp,
                  fontFamily: "Cabin",
                  inherit: false,
                ),
                textAlign: TextAlign.center,
              ),
               Text(
                "Congratulations! You have been\n"
                "successfully authenticated",
                style: TextStyle(
                  color: Color(0xFFB6B6B6),
                  fontSize: 18.sp,
                  fontFamily: "Cabin",
                  inherit: false,
                ),
                textAlign: TextAlign.center,
              ),
              CustomButtonAuth(
                text: "Continue",
                onPressed: () {},
                radiusBorder: 50,
                backgroundColor: AppColor.buttonColorCustomButtonAuth,
                width: 168,
                high: 32.6,
                borderWidth: 1,
                borderColor: AppColor.customButtonAuthColorBorder,
                sizeText: 13,
                colorText: AppColor.primaryColor,
              ),
            ],
          ),
        ),
        enterBottomSheetDuration: const Duration(microseconds: 300),
        exitBottomSheetDuration: const Duration(microseconds: 300),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero)));

    // Get.dialog(Column(
    //     mainAxisAlignment: MainAxisAlignment.center ,
    //   children: [
    //     Container(
    //       height: 263.h,
    //       width: 341.w,
    //       padding: EdgeInsets.all(10),
    //       decoration: BoxDecoration(
    //           color: Colors.white, borderRadius: BorderRadius.circular(20)),
    //       child: Column(
    //
    //         children: [
    //           Image.asset(AppImageAsset.wrongIcon),
    //         const Text(
    //                       "Oh no!",
    //                       mmmm: TextStyle(
    //                         color: Color(0xFF000000),
    //                         fontSize: 20.sp,
    //                         fontFamily: "Montaga",
    //                         inherit: false,
    //                       ),
    //                       textAlign: TextAlign.center,
    //                     ),
    //           const Text(
    //             "Something went wrong.\n"
    //           "Please try again.",
    //
    //             mmmm: TextStyle(
    //               color: Color(0xFF000000),
    //               fontSize: 16.sp,
    //               fontFamily: "Montaga",
    //               inherit: false,
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //         CustomButtonAuth(
    //
    //                         colorText: Color(0xFFFFFDFD),
    //                         text: "Try again",
    //                         onPressed: () {
    //
    //                         },
    //                         radiusBorder: 50,
    //                         backgroundColor:AppColor.primaryColor,
    //                         width: 113.w,
    //                         high: 40.h,
    //                         borderWidth: 1,
    //                         borderColor: const Color(0xFF97BFA0),
    //                         sizeText: 13,
    //
    //                       ),
    //
    //         ],
    //       ))]));

    // Get.dialog(Column(
    //   children: [
    //     Container(
    //       height: 263.h,
    //       width: 341.w,
    //       padding: EdgeInsets.all(10),
    //       decoration: BoxDecoration(
    //           color: Colors.white, borderRadius: BorderRadius.circular(20)),
    //       child: Column(
    //         children: [
    //           Image.asset(AppImageAsset.groupSmile),
    //           const Text(
    //             "Sorry!",
    //             mmmm: TextStyle(
    //               color: AppColor.primaryColor,
    //               fontSize: 32.sp,
    //               fontFamily: "Cabin",
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //           const Text(
    //             "Incorrect password or email ",
    //             mmmm: TextStyle(
    //               color: AppColor.primaryColor,
    //               fontSize: 20.sp,
    //               fontFamily: "Cabin",
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //         ],
    //       ),
    //     )
    //   ],
    // ));

    // Get.dialog(Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Container(
    //         height: 263.h,
    //         width: 341.w,
    //         padding: EdgeInsets.all(10),
    //         decoration: BoxDecoration(
    //             color: Colors.white, borderRadius: BorderRadius.circular(20)),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Image.asset(AppImageAsset.logOutImage),
    //             Text(
    //               "Oh no! You’re leaving...\n"
    //               "Are you sure?",
    //               textAlign: TextAlign.center,
    //               mmmm: TextStyle(
    //                   inherit: false,
    //                   fontFamily: "Cabin",
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 16,
    //                   color: AppColor.primaryColor),
    //             ),
    //
    //             CustomButtonAuth(
    //               text: "No",
    //               onPressed: () {},
    //               radiusBorder: 50,
    //               backgroundColor: AppColor.buttonColorCustomButtonAuth,
    //               width: 113,
    //               high: 28,
    //               borderWidth: 1,
    //               borderColor: const Color(0xFF97BFA0),
    //               sizeText: 13,
    //
    //             ),
    //             CustomButtonAuth(
    //               text: "Yes,Log Me out",
    //               onPressed: () {},
    //               radiusBorder: 50,
    //               backgroundColor: AppColor.buttonColorCustomButtonAuth,
    //               width: 113,
    //               high: 28,
    //               borderWidth: 1,
    //               borderColor: const Color(0xFF97BFA0),
    //               sizeText: 12,
    //
    //             )
    //           ],
    //         ))
    //   ],
    // ));
  }
}
