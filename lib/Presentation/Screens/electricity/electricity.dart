import 'package:flutter/material.dart';
import 'package:jessiepay/Presentation/Screens/electricity/components/body.dart';

class ElectricityScreen extends StatelessWidget {
  const ElectricityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElectricityBody(),
    );
  }
}
