import 'package:flutter/material.dart';

import '../../../core/constant/imagaeasset.dart';
class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image.asset(AppImageAsset.logoAppImage);
  }
}
