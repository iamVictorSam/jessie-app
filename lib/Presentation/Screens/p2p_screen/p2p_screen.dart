import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/transfer/transer_screen.dart';

import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class P2PScreen extends StatefulWidget {
  @override
  _P2PScreenState createState() => _P2PScreenState();
}

class _P2PScreenState extends State<P2PScreen> {
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
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Color(0xff336699),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'P2P Withdrawal',
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
                color: Color(0xff336699),
              ),
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
            boxShadow: [],
            controller: _panelController,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(17),
              topLeft: Radius.circular(17),
            ),
            minHeight: MediaQuery.of(context).size.height * 0.83,
            maxHeight: MediaQuery.of(context).size.height * 0.83,
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            CircleAvatar(
              radius: 50,
            ),
            SizedBox(
              height: 80.h,
            ),
            Text(
              'What is P2P Withdrawal?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              'P2P (Peer to Peer) Payments are safe and secure digital funds transactions between peer to peer using individual bank accounts.',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80.h,
            ),
            DefaultButton(
              text: 'Ok, Got it!',
              press: () {},
              bgColor: Colors.blue[200],
              textColor: Colors.blue,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Powered by Vaunt',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
