import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/Screens/renew/model/model.dart';
import 'package:jessiepay/Presentation/widgets/icon_card.dart';

class RenewBody extends StatefulWidget {
  const RenewBody({Key? key}) : super(key: key);

  @override
  State<RenewBody> createState() => _RenewBodyState();
}

class _RenewBodyState extends State<RenewBody> {
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 30,
                    )),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Refill',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Wrap(
                          spacing: 20,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          children: [
                            // SizedBox(height: 20,)
                            ...List.generate(
                                refillItems.length,
                                (index) => Padding(
                                      padding: EdgeInsets.only(top: 20.h),
                                      child: IconCard(
                                          name: refillItems[index].title,
                                          icon: refillItems[index].icon),
                                    )),
                            SizedBox(
                              height: 110.h,
                              width: 110.h,
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 50.h,
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50.h,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 120.h,
                    width: 200.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/ON6.png'))),
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
