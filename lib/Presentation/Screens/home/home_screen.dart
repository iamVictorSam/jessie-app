// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text(
              'Hello, Chief',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '12 june, 2022, ',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                color: kPrimaryColor,
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 26.h,
                )),
          ),
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              // height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/PHOTO-2022-02-12-11-47-53.jpg'),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wallet Balance',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.3)),
                        ),
                        Row(
                          children: [
                            Text(
                              '₦ * * * *',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w900),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.8),
                    ),
                    Text(
                      'Shortcuts',
                      style: TextStyle(
                          color: Colors.white,
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
                          name: 'Buy Bitcoin',
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
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 100.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/banner.jpeg'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
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
            height: 10.h,
          ),
          Expanded(
              child: GridView.count(
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(12.h),
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  children: List.generate(choices.length, (index) {
                    return Center(
                      child: SelectCard(choice: choices[index]),
                    );
                  })))
        ],
      ),
    );
  }
}

class ShortCutColumn extends StatelessWidget {
  const ShortCutColumn({Key? key, required this.image, required this.name})
      : super(key: key);
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Container(
            padding: EdgeInsets.all(5),
            height: 30.h,
            width: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Image.asset(image),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style:
              TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 9.sp),
        )
      ],
    );
  }
}

class Choice {
  const Choice({required this.desc, required this.title, required this.image});
  final String title;
  final String desc;
  final AssetImage image;
}

const List<Choice> choices = const <Choice>[
  Choice(
      title: 'Giftcard',
      desc: 'Buy and sell Giftcards at market-leading rates',
      image: AssetImage('assets/7.png')),
  Choice(
      title: 'Trade',
      desc: 'Send, recieve and trade crypto currency with us at Jessie',
      image: AssetImage('assets/5.png')),
  Choice(
      title: 'Perfect Money',
      desc: 'Make Perfect money transactions the better way',
      image: AssetImage('assets/6.png')),
  Choice(
      title: 'Refill',
      desc:
          'Refill your airtime, data, internet subscription, education the easy way',
      image: AssetImage('assets/4.png')),
  Choice(
      title: 'Perfect Money',
      desc: 'Make Perfect money transactions the better way',
      image: AssetImage('assets/8.png')),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(color: Colors.white);
    return SizedBox(
      // height: 200,
      // width: 50,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: choice.image, fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45.h,
                  ),
                  // Text(
                  //   choice.title,
                  //   style: TextStyle(
                  //       fontSize: 10.sp,
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  SizedBox(
                    height: 5.h,
                  ),
                  // Text(
                  //   choice.desc,
                  //   style: TextStyle(color: Colors.white, fontSize: 8.sp),
                  // ),
                ],
              ),
            )),
      ),
    );
  }
}
