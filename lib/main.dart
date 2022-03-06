import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/home/home_screen.dart';
import 'package:jessiepay/Presentation/Screens/home_new/home.dart';
import 'package:jessiepay/Presentation/Screens/password_screen/password_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/bottom_nav.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Presentation/Screens/onBoarding/onBoarding.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to show status bar
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  // to load onboard for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false; //if null set to false

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
              home: seenOnboard == true ? PasswordScreen() : OnBoardingPage(),
            ));
  }
}
