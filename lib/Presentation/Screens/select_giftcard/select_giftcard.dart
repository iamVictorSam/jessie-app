import 'package:flutter/material.dart';
import 'package:jessiepay/Presentation/Screens/select_giftcard/components/body.dart';

class SelectGiftCard extends StatelessWidget {
  const SelectGiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectGiftCardBody(),
    );
  }
}
