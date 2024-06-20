import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:trainingapp/core/constant/color.dart';
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test "),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            OtpTextField(
              numberOfFields: 6,
             fieldHeight:50 ,
             fieldWidth: 50,

             focusedBorderColor: AppColor.primaryColor,
             cursorColor: AppColor.hintTextColorCustomFormAuth,

             //borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft:Radius.circular(50) ,bottomRight:Radius.circular(50) ,topRight:Radius.circular(50) ),
              borderRadius:BorderRadius.all(Radius.circular(50)) ,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
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
