import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:jessiepay/Presentation/Screens/buy_btc/buy_btc.dart';
import 'package:jessiepay/Presentation/Screens/confirm_transaction.dart';
import 'package:jessiepay/Presentation/Screens/data_sub/data_sub.dart';
import 'package:jessiepay/Presentation/Screens/electricity/components/body.dart';
import 'package:jessiepay/Presentation/Screens/electricity/electricity.dart';
import 'package:jessiepay/Presentation/Screens/giftcard/giftcard.dart';
import 'package:jessiepay/Presentation/Screens/home_new/home.dart';
import 'package:jessiepay/Presentation/Screens/menu/menu_screen.dart';
import 'package:jessiepay/Presentation/Screens/naira_wallet/naira_wallet.dart';
import 'package:jessiepay/Presentation/Screens/perfect_buy/perfect_buy.dart';
import 'package:jessiepay/Presentation/Screens/perfect_money/perfect_money.dart';
import 'package:jessiepay/Presentation/Screens/profile/profile.dart';
import 'package:jessiepay/Presentation/Screens/renew/model/model.dart';
import 'package:jessiepay/Presentation/Screens/renew/renew.dart';
import 'package:jessiepay/Presentation/Screens/select_account/select_account.dart';
import 'package:jessiepay/Presentation/Screens/select_giftcard/select_giftcard.dart';
import 'package:jessiepay/Presentation/Screens/sell_giftcard/sell_giftcard.dart';
import 'package:jessiepay/Presentation/Screens/send_btc/send_btc.dart';
import 'package:jessiepay/Presentation/Screens/trading/trading.dart';
import 'package:jessiepay/Presentation/Screens/transaction_success/transaction_success.dart';
import 'package:jessiepay/Presentation/Screens/wallet_screen/wallet_screen.dart';

class MainScreeen extends StatefulWidget {
  const MainScreeen({Key? key}) : super(key: key);

  @override
  _MainScreeenState createState() => _MainScreeenState();
}

class _MainScreeenState extends State<MainScreeen> {
  int selectedIndex = 0;
  final screen = [
    const Home(),
    GiftCard(),
    Trade(),
    PerfectBuy(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff175acc),
        // buttonBackgroundColor: Colors.white,
        height: 55,
        backgroundColor: selectedIndex == 1
            ? Color.fromARGB(255, 46, 184, 248)
            : Colors.transparent,
        index: selectedIndex,
        items: [
          const Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.bar_chart_outlined,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.account_balance_wallet,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.pie_chart,
            size: 30,
            color: Colors.white,
          ),
          const Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: screen[selectedIndex],
    );
  }
}
