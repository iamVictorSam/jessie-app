// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/Screens/home/home_screen.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeBody()),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  DateTime dateToday =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  String datetime = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: 0.4,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/back.png',
              ),
              fit: BoxFit.cover,
            )),
            // color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.only(top: 30.h, left: 10.w),
              child: ListTile(
                // leading: CircleAvatar(),
                title: Text(
                  'Hello Chief,',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  datetime,
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600),
                ),
                trailing: IconButton(
                    color: Colors.white54,
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      size: 26.h,
                    )),
              ),
            ),
          ),
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
                  SizedBox(
                    height: 30.h,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100.h,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800)),
                    items: [
                      'assets/b1.jpeg',
                      'assets/b2.jpeg',
                      'assets/b3.jpeg',
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              // decoration: BoxDecoration(color: Colors.amber),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(i),
                                ),
                              ),
                              child: Container());
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'What do you want to do today?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 500,
                    child: GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 10,
                        padding: EdgeInsets.all(12.h),
                        crossAxisCount: 2,
                        childAspectRatio: 1.2,
                        children: List.generate(choices.length, (index) {
                          return Center(
                            child: SelectCard(choice: choices[index]),
                          );
                        })),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(top: 150, child: UserCard()),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          // height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallet Balance',
                      style: TextStyle(color: Colors.black.withOpacity(0.3)),
                    ),
                    Row(
                      children: [
                        Text(
                          '₦ * * * *',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w900),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Shortcuts',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShortCutColumn(
                      image: 'assets/gift-card.png',
                      name: 'Sell Giftcard',
                    ),
                    ShortCutColumn(
                      image: 'assets/call.png',
                      name: 'Buy Airtime',
                    ),
                    ShortCutColumn(
                      image: 'assets/bitcoin.png',
                      name: 'Sell Bitcoin',
                    ),
                    ShortCutColumn(
                      image: 'assets/withdraw.png',
                      name: 'Withdraw',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
