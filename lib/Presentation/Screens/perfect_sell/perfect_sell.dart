import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';

class PerfectSell extends StatelessWidget {
  const PerfectSell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PerfectSellBody());
  }
}

class PerfectSellBody extends StatefulWidget {
  const PerfectSellBody({Key? key}) : super(key: key);

  @override
  State<PerfectSellBody> createState() => _PerfectSellBodyState();
}

class _PerfectSellBodyState extends State<PerfectSellBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                    color: kPrimaryColor,
                  )),
              Spacer(),
              Text(
                'Perfect Money Sell',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(top: 30.h),
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 25.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'PM ID',
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                          )),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Customer Name',
                          filled: true,
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: '0',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(4)),
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        '\$',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(
                                      'N',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ]),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(8),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                          )),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Rate',
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color.fromARGB(255, 130, 129, 129)),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              height: 7.h,
                              width: 7.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '@580',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp,
                                  color: kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    DefaultButton(text: 'Proceed', press: () {}),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
