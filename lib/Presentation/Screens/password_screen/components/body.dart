import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/Screens/password_screen/components/otp_form.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class PasswordBody extends StatefulWidget {
  const PasswordBody({Key? key}) : super(key: key);

  @override
  _PasswordBodyState createState() => _PasswordBodyState();
}

class _PasswordBodyState extends State<PasswordBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Text(
                  "Enter your Pin",
                  style: headingStyle,
                ),
                const Text(
                    "We will request this pin to process your transaction",
                    style: TextStyle(color: Colors.white)),
                const OtpForm(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                GestureDetector(
                  onTap: () {
                    // OTP code resend
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
