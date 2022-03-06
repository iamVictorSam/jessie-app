import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/menu/components/body.dart';
import 'package:jessiepay/Presentation/Screens/menu/menu_screen.dart';

import 'package:jessiepay/Presentation/Screens/wallet_screen/wallet_screen.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode?.dispose();
    pin3FocusNode?.dispose();
    pin4FocusNode?.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  String text = '';
  // KeyboardTapCallback

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  controller: _controller1,
                  showCursor: true,
                  // initialValue: text,
                  readOnly: true,
                  autofocus: true,
                  // obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode!);
                  },
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  controller: _controller2,
                  showCursor: true,
                  readOnly: true,
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin3FocusNode!),
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  controller: _controller3,
                  showCursor: true,
                  readOnly: true,
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin4FocusNode!),
                ),
              ),
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  showCursor: true,
                  controller: _controller4,
                  readOnly: true,
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode?.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          // Spacer
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Container(
            color: Colors.white,
            child: NumericKeyboard(
                onKeyboardTap: _onKeyboardTap,
                textColor: kPrimaryColor,
                rightButtonFn: () {
                  setState(() {
                    text = text.substring(0, text.length - 1);
                  });
                },
                rightIcon: Icon(
                  Icons.backspace,
                  color: kPrimaryColor,
                ),
                leftButtonFn: () {
                  print('left button clicked');
                },
                leftIcon: Icon(
                  Icons.fingerprint,
                  size: 36,
                  color: kPrimaryColor,
                ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly),
          ),
          // DefaultButton(
          //   bgColor: Colors.white,
          //   textColor: Colors.blue,
          //   text: "Continue",
          //   press: () {
          //     Get.to(() => MenuScreen());
          //   },
          // )
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          GestureDetector(
            onTap: () {
              // OTP code resend
            },
            child: const Text(
              "Sign in",
              style: TextStyle(color: kPrimaryColor),
            ),
          )
        ],
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
    _controller1.text = text;
    nextField(value, pin3FocusNode!);
  }
}
