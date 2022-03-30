import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/home_new/home.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/mPin/mpin/mpin_widget.dart';
import 'package:jessiepay/services/biometrics/auth.dart';
import 'package:local_auth/local_auth.dart';

class MPinPage extends StatefulWidget {
  @override
  _MPinPageState createState() => _MPinPageState();
}

class _MPinPageState extends State<MPinPage> {
  MPinController mPinController = MPinController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //   colors: [Colors.blue, Colors.purple, Colors.pink],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // )
              image: DecorationImage(
                  image: AssetImage(
                    'assets/slpas.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: kPrimaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.w, vertical: 10.h),
                      child: Text(
                        'Enter Your PIN to unlock App',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Text(
                        'Input your PIN',
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                    Spacer(),
                    MPinWidget(
                      pinLength: 5,
                      controller: mPinController,
                      onCompleted: (mPin) {
                        print('You entered -> $mPin');
                        if (mPin == '12345') {
                          Get.offAll(Home());
                          // showDialog(

                          //     context: context,
                          //     builder: (context) {
                          //       return AlertDialog(
                          //         title: Text('Success'),
                          //         content: Text('Go to next page'),
                          //       );
                          //     });
                        } else {
                          //animate wrong input
                          mPinController.notifyWrongInput!();
                        }
                      },
                    ),
                    // SizedBox(height: 32),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          GridView.count(
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            childAspectRatio: 1.6,
                            children: List.generate(
                                9, (index) => buildMaterialButton(index + 1)),
                          ),
                          GridView.count(
                            crossAxisCount: 3,
                            shrinkWrap: true,
                            childAspectRatio: 1.6,
                            children: [
                              MaterialButton(
                                onPressed: () async {
                                  // mPinController.addInput('$input');
                                  // final isAuthenticated =
                                  //     await LocalAuthApi.authentication();

                                  final biometrics =
                                      await LocalAuthApi.getBiometrics();

                                  final hasFingerPrint = biometrics
                                      .contains(BiometricType.fingerprint);

                                  final hasFaceId =
                                      biometrics.contains(BiometricType.face);

                                  final isAuthenticated =
                                      await LocalAuthApi.authentication();
                                  if (isAuthenticated!) {
                                    Get.offAll(Home());
                                  }
                                  // if(!hasFaceId) {
                                  //   return ;
                                  // }else{

                                  // }
                                },
                                textColor: Colors.black,
                                child: Icon(Icons.fingerprint),
                              ),
                              buildMaterialButton(0),
                              MaterialButton(
                                onPressed: () {
                                  mPinController.delete!();
                                },
                                textColor: Colors.black,
                                child: Icon(Icons.backspace_outlined),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            textColor: kPrimaryColor,
                            child: Text(
                              'Sign In',
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      // padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Unlock App',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  MaterialButton buildMaterialButton(int input) {
    return MaterialButton(
      onPressed: () {
        mPinController.addInput!('$input');
      },
      textColor: Colors.black,
      child: Text(
        '$input',
        style: TextStyle(fontSize: 24.sp),
      ),
    );
  }
}
