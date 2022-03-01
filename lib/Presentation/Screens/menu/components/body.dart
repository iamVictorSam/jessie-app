// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/naira_wallet/naira_wallet.dart';
import 'package:jessiepay/Presentation/Screens/p2p_screen/p2p_screen.dart';
import 'package:jessiepay/Presentation/Screens/wallet_screen/wallet_screen.dart';

import 'name_card.dart';

class MenuBody extends StatefulWidget {
  const MenuBody({Key? key}) : super(key: key);

  @override
  _MenuBodyState createState() => _MenuBodyState();
}

class _MenuBodyState extends State<MenuBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          NameCard(),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            onTap: () => Get.to(() => WalletScreen()),
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Wallets',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Cards',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Transaction History',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {
                Get.to(P2PScreen());
              },
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Help',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 65.w),
            child: Divider(
              color: Colors.white70,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Login',
              style: _titleStyle(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _titleStyle() => TextStyle(color: Colors.white, fontSize: 18.sp);
}
