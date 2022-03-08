import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/authentication/login_page.dart';
import 'package:jessiepay/Presentation/Screens/authentication/sign_up_page.dart';
import 'package:jessiepay/Presentation/Screens/password_screen/password_screen.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class GateWayScreen extends StatelessWidget {
  const GateWayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/slpas.png'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            // CircleAvatar(),
            Image.asset(
              'assets/JESSIE FAVICON II.png',
              height: 50.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white.withOpacity(0.8),
                // fontWeight: FontWeight.w600,
              ),
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
            Text(
              'JESSIE PAY',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.5,
            // ),
            GestureDetector(
              onTap: () => Get.to(SignUpPage()),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () => Get.to(PasswordScreen()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account? ',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
