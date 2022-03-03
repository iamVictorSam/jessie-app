// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class BuyBTC extends StatefulWidget {
  @override
  BuyBTCState createState() => BuyBTCState();
}

class BuyBTCState extends State<BuyBTC> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text(
            'BTC',
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0,
          // give the app bar rounded corners
        ),
        body: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: <Widget>[
              // construct the profile details widget here
              SizedBox(
                height: 20.h,
              ),
              // the tab bar with two items
              Container(
                height: 70.h,
                child: AppBar(
                  backgroundColor: Color.fromARGB(255, 237, 237, 237),
                  automaticallyImplyLeading: false,
                  // ignore: prefer_const_constructors
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: new Size(200.0, 200.0),
                    child: Container(
                      height: 70.h,
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                            )),
                        indicatorColor: Colors.white,
                        labelColor: Colors.blue,
                        unselectedLabelColor:
                            Color.fromARGB(255, 109, 108, 108),
                        tabs: [
                          Tab(
                            text: 'Buy',
                          ),
                          Tab(
                            text: 'Recieve',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    BuyTab(),
                    // second tab bar viiew widget
                    SellTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SellTab extends StatelessWidget {
  const SellTab({Key? key}) : super(key: key);
  TextStyle _titleStyle() => TextStyle(
      color: Colors.grey, fontSize: 15.sp, fontWeight: FontWeight.bold);
  TextStyle _labelStyle() => TextStyle(
      color: Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            style: _titleStyle(),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.grey.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Naira Wallet',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'To',
                            style: _titleStyle(),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.grey.withOpacity(0.3)),
                            child: Padding(
                              padding: EdgeInsets.all(20.h),
                              child: Text(
                                'BTC Wallet',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.grey),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8)),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Center(
                        child: Text(
                      'Rate: 583/\$',
                      style: _titleStyle(),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('You Pay', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.yellow),
                          backgroundColor:
                              Colors.yellow[300]!.withOpacity(0.3)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.h),
                        child: Text(
                          'USD',
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.yellow[600]),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    label: Text('Input Amount', style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text('You Pay', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.indigo),
                          backgroundColor:
                              Colors.indigo[300]!.withOpacity(0.3)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.h),
                        child: Text(
                          'USD',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    label: Text('Input Amount', style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16.h),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.file_download),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text('You get', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.green),
                          backgroundColor: Colors.green[300]!.withOpacity(0.3)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.h),
                        child: Text(
                          'NGN',
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.green[600]),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    label: Text('Input Amount', style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                DefaultButton(
                    bgColor: Colors.blue.withOpacity(0.3),
                    text: 'Continue',
                    press: () {}),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
    );
  }
}

class BuyTab extends StatelessWidget {
  const BuyTab({Key? key}) : super(key: key);
  TextStyle _titleStyle() => TextStyle(
      color: Colors.grey, fontSize: 15.sp, fontWeight: FontWeight.bold);
  TextStyle _labelStyle() => TextStyle(
      color: Colors.grey, fontSize: 12.sp, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            style: _titleStyle(),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.grey.withOpacity(0.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Naira Wallet',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'To',
                            style: _titleStyle(),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.grey.withOpacity(0.3)),
                            child: Padding(
                              padding: EdgeInsets.all(20.h),
                              child: Text(
                                'BTC Wallet',
                                style: TextStyle(
                                    fontSize: 13.sp, color: Colors.grey),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8)),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Center(
                        child: Text(
                      'Rate: 583/\$',
                      style: _titleStyle(),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('You Pay', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.green),
                          backgroundColor: Colors.green[300]!.withOpacity(0.3)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.h),
                        child: Text(
                          'NGN',
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.green[600]),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    label: Text('Input Amount', style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text('You Pay', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.indigo),
                          backgroundColor:
                              Colors.indigo[300]!.withOpacity(0.3)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.h),
                        child: Text(
                          'USD',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    label: Text('Input Amount', style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16.h),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.file_download),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text('You get', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.yellow),
                          backgroundColor:
                              Colors.yellow[300]!.withOpacity(0.3)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 20.h),
                        child: Text(
                          'USD',
                          style: TextStyle(
                              fontSize: 14.sp, color: Colors.yellow[600]),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    label: Text('Input Amount', style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                DefaultButton(
                    bgColor: Colors.blue.withOpacity(0.3),
                    text: 'Continue',
                    press: () {}),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
    );
  }
}
