import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.bgColor = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;
  final Color? bgColor, textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56.h,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: bgColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
