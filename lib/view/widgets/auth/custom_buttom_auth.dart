import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final double? sizeText;

  final void Function()? onPressed;
  final double radiusBorder;
  final Color backgroundColor;
  final double width;
  final double high;
  final Color borderColor;
  final Color colorText;
  final double borderWidth;

  const CustomButtonAuth({
    super.key,
    required this.text,
    this.onPressed,
    required this.radiusBorder,
    required this.backgroundColor,
    required this.width,
    required this.high,
    required this.borderColor,
    required this.borderWidth,
    this.sizeText, required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:  EdgeInsets.only(top: 31.h),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              side: BorderSide(width: borderWidth, color: borderColor),
              minimumSize: Size(width.w, high.h),
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radiusBorder),
              )),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Montaga",
              color: colorText,
              fontSize: sizeText?.sp,
            ),
          ),
        ));
  }
}
//AppColor.textButtonColorCustomButtonAuth