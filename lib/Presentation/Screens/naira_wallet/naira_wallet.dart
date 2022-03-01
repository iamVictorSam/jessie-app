import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/p2p_screen/p2p_screen.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class NairaWallet extends StatefulWidget {
  @override
  _NairaWalletState createState() => _NairaWalletState();
}

class _NairaWalletState extends State<NairaWallet> {
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
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Color(0xff47B264),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Naira Wallet',
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
                color: Color(0xff47B264),
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
                                  elevation: 0, primary: Color(0xff5CCE9B)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Send',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ),
                              onPressed: () {})),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 0, primary: Color(0xff5CCE9B)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Receive',
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ),
                              onPressed: () {
                                print('ello');
                              })),
                    ],
                  ),
                )
              ]),
            ),
          ),

          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.3,
            child: Container(
              color: Colors.white,
            ),
          ),

          /// Sliding Panel
          SlidingUpPanel(
            controller: _panelController,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(17),
              topLeft: Radius.circular(17),
            ),
            minHeight: MediaQuery.of(context).size.height * 0.55,
            maxHeight: MediaQuery.of(context).size.height * 0.55,
            body: GestureDetector(
              onTap: () => _panelController.close(),
              child: Container(
                color: Colors.transparent,
              ),
            ),
            panelBuilder: (ScrollController controller) =>
                _panelBody(controller),
            onPanelSlide: (value) {
              if (value >= 0.2) {
                if (!_isOpen) {
                  setState(() {
                    _isOpen = true;
                  });
                }
              }
            },
            onPanelClosed: () {
              setState(() {
                _isOpen = false;
              });
            },
          ),
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
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction history',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text('updated now'),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            onTap: () => Get.to(P2PScreen()),
            leading: CircleAvatar(
              backgroundColor: Color(0xff47B264),
              child: Text('N', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Deposit'),
            subtitle: Text('2022-02-25 15:40:32'),
            trailing: Column(
              children: [
                Text('N 6000'),
                SizedBox(
                  height: 10.h,
                ),
                Text('Pending', style: TextStyle(color: Colors.yellow)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff47B264),
              child: Text('N', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Deposit'),
            subtitle: Text('2022-02-25 15:40:32'),
            trailing: Column(
              children: [
                Text('N 6000'),
                SizedBox(
                  height: 10.h,
                ),
                Text('Pending', style: TextStyle(color: Colors.yellow)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff47B264),
              child: Text('N', style: TextStyle(color: Colors.white)),
            ),
            title: Text('Deposit'),
            subtitle: Text('2022-02-25 15:40:32'),
            trailing: Column(
              children: [
                Text('N 6000'),
                SizedBox(
                  height: 10.h,
                ),
                Text('Pending', style: TextStyle(color: Colors.yellow)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
