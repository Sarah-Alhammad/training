import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:trainingapp/test.dart';
import 'package:trainingapp/view/screen/auth/login.dart';
import 'package:trainingapp/view/screen/splash_screen.dart';

import 'core/services/services.dart';
import 'routes.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(360,740 ),
      minTextAdapt: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home:SplashScreen(),
        // Test(),
        routes: routes,
      ),
    );
  }
}

