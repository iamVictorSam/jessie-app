import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/password_screen/password_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: () => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Jessie Pay',
              theme: ThemeData(
                textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
              ),
              home: const MainScreeen(),
            ));
  }
}
