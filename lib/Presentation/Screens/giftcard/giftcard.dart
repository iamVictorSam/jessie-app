import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/Screens/home/home_screen.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class GiftCard extends StatelessWidget {
  const GiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(child: GiftCardBody()),
    );
  }
}

class GiftCardBody extends StatefulWidget {
  const GiftCardBody({Key? key}) : super(key: key);

  @override
  State<GiftCardBody> createState() => _GiftCardBodyState();
}

class _GiftCardBodyState extends State<GiftCardBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/slpas.png',
                ),
                fit: BoxFit.fill),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    // height: ,
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Your one stop shop\nfor all Giftcards.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.5.h,
                                color: kPrimaryColor,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffF2F2F2).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            child: ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: kPrimaryColor,
                                  child: Icon(
                                    Icons.sell,
                                    color: Colors.white,
                                  )),
                              title: Text(
                                'Sell GiftCard',
                                style: TextStyle(
                                    height: 1.5.h,
                                    // color: kPrimaryColor,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffF2F2F2).withOpacity(0.7),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            child: ListTile(
                              leading: CircleAvatar(
                                  backgroundColor: kPrimaryColor,
                                  child: Icon(
                                    Icons.wallet_giftcard,
                                    color: Colors.white,
                                  )),
                              title: Text(
                                'Buy GiftCard',
                                style: TextStyle(
                                    height: 1.5.h,
                                    // color: kPrimaryColor,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    )),
              ),
              FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor: 0.53,
                child: Container(
                  // color: Colors.black,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {
                              print('ues');
                            },
                            icon: Icon(Icons.arrow_back_ios_new_rounded),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                              viewportFraction: 0.6,
                              height: 100.h,
                              // width: 50.w,
                              aspectRatio: 9 / 9,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800)),
                          items: [
                            'assets/card1.jpeg',
                            'assets/card2.jpeg',
                            'assets/card7.jpeg',
                            'assets/card3.jpeg',
                            'assets/card5.jpeg',
                            'assets/card4.jpeg',
                            'assets/card6.jpeg',
                            'assets/card8.jpeg',
                            // 'assets/b2.jpeg',
                            // 'assets/b3.jpeg',
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    height: 70,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    // decoration: BoxDecoration(color: Colors.amber),
                                    decoration: BoxDecoration(
                                      // color: Colors.red,
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                        image: AssetImage(i),
                                      ),
                                    ),
                                    child: Container());
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
