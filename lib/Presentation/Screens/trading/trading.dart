import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/naira_wallet/naira_wallet.dart';
import 'package:jessiepay/Presentation/Screens/wallet_screen/wallet_screen.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';

class Trade extends StatelessWidget {
  const Trade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _titleStyle = TextStyle(color: Colors.white54, fontSize: 12.sp);
    TextStyle _subtitleStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
    );
    Color yellow = Color.fromARGB(255, 255, 177, 60);
    Color green = Colors.green[500]!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Wallet',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () => Get.to(NairaWallet()),
                child: ColorContainer(
                  bgColor: green,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 15.h),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/naira.png'),
                      ),
                      title: Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Text('Naira Wallet', style: _titleStyle),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            'NGN 0.00',
                            style: _subtitleStyle,
                          ),
                          SizedBox(
                            width: 7.w,
                          ),
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white70,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () => Get.to(WalletScreen()),
                child: ColorContainer(
                  bgColor: yellow,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                      child: RowCard(
                        image: 'assets/9.png',
                        exAmount: '36,018',
                        exName: 'BTC/USD',
                        walletName: 'Bitcoin Wallet',
                        wAmount: 'BTC 0.00000',
                      )),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: kPrimaryColor,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/eth.png',
                      exAmount: '36,018',
                      exName: 'ETH/USD',
                      walletName: 'Ethereum Wallet',
                      wAmount: 'BTC 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: Colors.black,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/litecoin.png',
                      exAmount: '36,018',
                      exName: 'LTC/USD',
                      walletName: 'Litecoin Wallet',
                      wAmount: 'LTC 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: green,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/tether.png',
                      exAmount: '36,018',
                      exName: 'USDT/USD',
                      walletName: 'Tether Wallet',
                      wAmount: 'USDT 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: yellow,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/bnb.png',
                      exAmount: '36,018',
                      exName: 'BNB/USD',
                      walletName: 'Binance Wallet',
                      wAmount: 'BTC 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: kPrimaryColor,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/bch.png',
                      exAmount: '36,018',
                      exName: 'BCH/USD',
                      walletName: 'Bitcoin Cash Wallet',
                      wAmount: 'BCH 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: Colors.black,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/solana.png',
                      exAmount: '36,018',
                      exName: 'SOL/USD',
                      walletName: 'Solana Wallet',
                      wAmount: 'SOL 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: yellow,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/dodge.png',
                      exAmount: '36,018',
                      exName: 'Doge/USD',
                      walletName: 'Doge Wallet',
                      wAmount: 'Doge 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: Colors.red,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/tron.png',
                      exAmount: '36,018',
                      exName: 'TRX/USD',
                      walletName: 'Tron Wallet',
                      wAmount: 'TRX 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: Colors.black,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/matic.png',
                      exAmount: '36,018',
                      exName: 'MATIC/USD',
                      walletName: 'Polygon Wallet',
                      wAmount: 'MATIC 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: kPrimaryColor,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/cardano.png',
                      exAmount: '36,018',
                      exName: 'ADA/USD',
                      walletName: 'Cardano Wallet',
                      wAmount: 'ADA 0.00000',
                    )),
              ),
              SizedBox(
                height: 40.h,
              ),
              ColorContainer(
                bgColor: Colors.black,
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                    child: RowCard(
                      image: 'assets/ripple.png',
                      exAmount: '36,018',
                      exName: 'XRP/USD',
                      walletName: 'Ripple Wallet',
                      wAmount: 'XRP 0.00000',
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RowCard extends StatelessWidget {
  RowCard({
    Key? key,
    required this.walletName,
    required this.wAmount,
    required this.exName,
    required this.exAmount,
    required this.image,
  }) : super(key: key);
  TextStyle _titleStyle = TextStyle(color: Colors.white54, fontSize: 12.sp);
  TextStyle _subtitleStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  final String walletName, wAmount, exName, exAmount, image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: Cross,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 15.w, left: 12.w),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(image),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(walletName, style: _titleStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      wAmount,
                      style: _subtitleStyle,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white70,
                        ))
                  ],
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            height: 100,
            width: 1,
            color: Colors.white54,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              exName,
              style: _titleStyle,
            ),
            SizedBox(
              height: 13.h,
            ),
            Text(
              '\$$exAmount',
              style: _subtitleStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        )
      ],
    );
  }
}

class ColorContainer extends StatelessWidget {
  ColorContainer({Key? key, required this.bgColor, required this.child})
      : super(key: key);
  final Color bgColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: bgColor,
      ),
      child: child,
    );
  }
}
