import 'package:canecer_scan/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'core/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const double _designWidth = 375;
  static const double _desigHeight = 846;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(MyApp._designWidth, MyApp._desigHeight),
        builder: (context, widget) {
          return MultiProvider(
            providers: providers,
            child: const GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            ),
          );
        });
  }
}
