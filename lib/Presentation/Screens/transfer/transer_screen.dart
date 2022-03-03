import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/p2p_screen/p2p_screen.dart';
import 'package:jessiepay/Presentation/Screens/send_btc/send_btc.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
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
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios_rounded)),
        backgroundColor: Color(0xff336699),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Transfer',
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
              height: 40.h,
            ),
            Text(
              'Choose Method of Transfer',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                // print(object)
                Get.to(P2PScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 245, 245, 245)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text('P2P Widthdrawal'),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 245, 245, 245)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: ListTile(
                  onTap: () => Get.to(SendBTC()),
                  leading: CircleAvatar(),
                  title: Text('JessiePay user'),
                  trailing: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 181, 229, 245),
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(6)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Instant',
                          style: TextStyle(fontSize: 12.sp, color: Colors.blue),
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
