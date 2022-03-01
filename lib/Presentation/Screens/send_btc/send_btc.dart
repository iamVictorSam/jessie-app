// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/buy_btc/buy_btc.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SendBTC extends StatefulWidget {
  @override
  SendBTCState createState() => SendBTCState();
}

class SendBTCState extends State<SendBTC> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Send BTC',
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
                  backgroundColor: Colors.grey,
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
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                            )),
                        indicatorColor: Colors.white,
                        labelColor: Colors.blue,
                        unselectedLabelColor:
                            Color.fromARGB(255, 109, 108, 108),
                        tabs: [
                          Tab(
                            text: 'Send',
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
                    SendTab(),
                    // second tab bar viiew widget
                    RecieveTab(),
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

class RecieveTab extends StatelessWidget {
  const RecieveTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Icon(
              Icons.qr_code_2,
              size: 200,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Wallet Address',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'dsahoihjwqeoir92q9r02urqjwpoiiwqj',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color.fromARGB(255, 99, 98, 98),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 70.h,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.blue.withOpacity(0.3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Copy Address',
                        style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Colors.blue.withOpacity(0.3)),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 20.h),
                      child: Text(
                        'Save QR Code',
                        style: TextStyle(fontSize: 11.sp, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SendTab extends StatelessWidget {
  const SendTab({Key? key}) : super(key: key);
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
                  height: 20.h,
                ),
                Text('Recipient\s address', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text(
                        'Input BTC Address or Recipient Patricia Username',
                        style: _labelStyle()),
                    border: outlineInputBorder(),
                    enabledBorder: outlineInputBorder(),
                    focusedBorder: outlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.blue.withOpacity(0.3),
                        ),
                        label: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Scan QR',
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.blue),
                          ),
                        ),
                        onPressed: () {
                          Get.to(BuyBTC());
                        },
                        icon: Icon(
                          Icons.qr_code,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: Colors.blue.withOpacity(0.3)),
                          label: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 20.h),
                            child: Text(
                              'Paste Address',
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.blue),
                            ),
                          ),
                          onPressed: () {},
                          icon:
                              Icon(Icons.copy_all_rounded, color: Colors.blue)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('You Send', style: _titleStyle()),
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
                Text('You Send', style: _titleStyle()),
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
                  height: 30.h,
                ),
                Text('Description (optional)', style: _titleStyle()),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text('Payment details', style: _labelStyle()),
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
