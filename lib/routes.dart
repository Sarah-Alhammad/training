import 'package:flutter/material.dart';
import 'package:trainingapp/core/constant/routes.dart';
import 'package:trainingapp/view/screen/auth/auth_enticated.dart';
import 'package:trainingapp/view/screen/auth/forget_password.dart';
import 'package:trainingapp/view/screen/auth/reset_password.dart';
import 'package:trainingapp/view/screen/auth/signup.dart';

import 'view/screen/auth/login.dart';

Map<String, Widget Function(BuildContext)> routes={
  AppRoute.login : (context) =>  Login(),
  AppRoute.signUp:(context) => const SignUp(),
  AppRoute.authEnticated:(context)=> const AuthEnticated(),
  AppRoute.forgetPassword:(context)=> const ForgetPassword(),
  AppRoute.resetPassword:(context)=> const ResetPassword(),

};