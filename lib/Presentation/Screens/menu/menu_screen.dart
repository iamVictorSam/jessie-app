import 'package:flutter/material.dart';
import 'package:jessiepay/Presentation/Screens/menu/components/body.dart';

import 'package:jessiepay/Presentation/helpers/constants.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Menu',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ))
        ],
      ),
      body: const MenuBody(),
    );
  }
}
