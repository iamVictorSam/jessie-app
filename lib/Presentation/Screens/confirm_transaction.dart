import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';

class ConfrimTransaction extends StatelessWidget {
  ConfrimTransaction({Key? key}) : super(key: key);

  TextStyle _titleStyle =
      TextStyle(color: Colors.black.withOpacity(0.3), fontSize: 14.sp);
  TextStyle _trailingStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Text(
                'JESSIE PAY',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Pay 1053.75 NGN to the account below',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Do not use any cruptocurrency related narration in your transaction',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 13),
              ),
              SizedBox(
                height: 30.h,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.3),
                title: Text('Bank Account', style: _titleStyle),
                trailing: Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '30392029202',
                        style: _trailingStyle,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.copy,
                        size: 15.h,
                        color: kPrimaryColor,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.3),
                title: Text('Bank Name', style: _titleStyle),
                trailing: Text(
                  'PAGA',
                  style: _trailingStyle,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.3),
                title: Text('Account Name', style: _titleStyle),
                trailing: Text(
                  'Sam Victor',
                  style: _trailingStyle,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Transform.translate(
                  offset: Offset(-16, 0),
                  child: Text(
                    'Please, only send the amount specific on this page. Your transaction will not be successful if you send any amount below or above this',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultButton(text: 'I have transferred, Next', press: () {})
            ],
          ),
        ),
      ),
    );
  }
}
