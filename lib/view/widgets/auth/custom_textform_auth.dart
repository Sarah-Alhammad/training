import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trainingapp/core/constant/color.dart';

import '../../../core/styles/auth/textStyles.dart';


class CustomTextFormAuth extends StatelessWidget {
  final String hitText;
  final Widget? iconWidget;
  final TextEditingController? myController;

  const CustomTextFormAuth(
      {super.key,
      required this.hitText,
      this.iconWidget,
      required this.myController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: 31.h),
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.fillColorCustomFormAuth,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: AppColor.borderSideColorCustomFormAuth),
            ),
            suffixIcon: iconWidget,
            contentPadding:
                 EdgeInsets.symmetric(vertical: 4.h, horizontal: 31.w),
            hintText: hitText,
            hintStyle:TextStyles.hintStyleCustomTextFormAuth
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
