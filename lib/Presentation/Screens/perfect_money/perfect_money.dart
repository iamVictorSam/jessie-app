import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/perfect_buy/perfect_buy.dart';
import 'package:jessiepay/Presentation/Screens/perfect_sell/perfect_sell.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class PerfectMoney extends StatefulWidget {
  const PerfectMoney({Key? key}) : super(key: key);

  @override
  State<PerfectMoney> createState() => _PerfectMoneyState();
}

class _PerfectMoneyState extends State<PerfectMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/slpas.png'), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                  child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Perfect Money',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: ListTile(
                              onTap: () {
                                Get.to(PerfectBuy());
                              },
                              leading: CircleAvatar(),
                              title: Text(
                                'Perfect Money Buy',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            child: ListTile(
                              onTap: () {
                                Get.to(PerfectSell());
                              },
                              leading: CircleAvatar(),
                              title: Text(
                                'Perfect Money Sell',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 64.h,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200.h,
                    // width: 260.h,
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/ON2.png'))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
