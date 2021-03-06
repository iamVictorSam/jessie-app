import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/naira_wallet/naira_wallet.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  bool _isOpen = false;
  PanelController _panelController = PanelController();

  /// **********************************************
  /// LIFE CYCLE METHODS
  /// **********************************************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Color.fromARGB(255, 255, 177, 60),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Bitcoin Wallet',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 177, 60),
              ),
              child: Column(children: [
                Text(
                  'Available:',
                  style: TextStyle(color: Colors.white54),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '* * * * * * * * *',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 255, 186, 82),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Send',
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                              onPressed: () {
                                // Get.to(SelectAccount());
                              })),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Color.fromARGB(255, 255, 186, 82),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Receive',
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                              onPressed: () {
                                // Get.to(Transfer());
                              })),
                    ],
                  ),
                )
              ]),
            ),
          ),

          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.7,
            child: Container(
              color: Color.fromARGB(255, 255, 177, 60),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 5.h,
                  // ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 30.h),
                            Image.asset(
                              'assets/hist.png',
                              height: 150.h,
                              width: 150.w,
                            ),
                            SizedBox(
                              height: 40.h,
                            ),
                            Text(
                              'No Transactions yet',
                              style: TextStyle(
                                  fontSize: 20.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.h),
                              child: Text(
                                'Any transactions you make will appear here. Let\'s start trading!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.grey),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.w, vertical: 20.h),
                              child: DefaultButton(
                                text: 'Trade BTC',
                                press: () {
                                  // Get.to(() => Wallet());
                                },
                                bgColor: Color(0xffFEC836),
                                textColor: Color.fromARGB(209, 218, 160, 0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(10),
          //       topRight: Radius.circular(10),
          //     ),
          //   ),
          // )

          /// Sliding Panel
          // SlidingUpPanel(
          //   boxShadow: [],
          //   controller: _panelController,
          //   borderRadius: BorderRadius.only(
          //     topRight: Radius.circular(17),
          //     topLeft: Radius.circular(17),
          //   ),
          //   minHeight: MediaQuery.of(context).size.height * 0.55,
          //   maxHeight: MediaQuery.of(context).size.height * 0.55,
          //   body: GestureDetector(
          //     onTap: () => _panelController.close(),
          //     child: Container(
          //       color: Colors.transparent,
          //     ),
          //   ),
          //   panelBuilder: (ScrollController controller) =>
          //       _panelBody(controller),
          //   onPanelSlide: (value) {
          //     if (value >= 0.2) {
          //       if (!_isOpen) {
          //         setState(() {
          //           _isOpen = true;
          //         });
          //       }
          //     }
          //   },
          //   onPanelClosed: () {
          //     setState(() {
          //       _isOpen = false;
          //     });
          //   },
          // ),
        ],
      ),
    );
  }

  /// **********************************************
  /// WIDGETS
  /// **********************************************
  /// Panel Body
  SingleChildScrollView _panelBody(ScrollController controller) {
    double hPadding = 40;

    return SingleChildScrollView(
      controller: controller,
      physics: ClampingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 70.h),
          CircleAvatar(
            radius: 40.0,
          ),
          SizedBox(
            height: 70.h,
          ),
          Text(
            'No Transactions yet',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.h),
            child: Text(
              'Any transactions you make will appear here. Let\'s start trading!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.sp, color: Colors.grey),
            ),
          ),
          SizedBox(height: 70.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            child: DefaultButton(
              text: 'Trade BTC',
              press: () {
                // Get.to(() => Wallet());
              },
              bgColor: Color(0xffFEC836),
              textColor: Color.fromARGB(209, 218, 160, 0),
            ),
          )
        ],
      ),
    );
  }
}
