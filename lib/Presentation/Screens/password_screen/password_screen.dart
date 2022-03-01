import 'package:flutter/material.dart';
import 'package:jessiepay/Presentation/Screens/password_screen/components/body.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: PasswordBody(),
    );
  }
}
