import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/default_button.dart';

class TransactionSuccess extends StatelessWidget {
  const TransactionSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          CircleAvatar(
            radius: 40,
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'Transaction Successful!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'We are now confirming your transaction',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 13.sp),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: DefaultButton(
              text: 'Ok, Got it',
              press: () {},
              textColor: kPrimaryColor,
              bgColor: kPrimaryColor.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
