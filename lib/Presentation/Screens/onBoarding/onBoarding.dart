import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessiepay/Presentation/Screens/authentication/sign_up_page.dart';
import 'package:jessiepay/Presentation/Screens/gateway/gateway.dart';
import 'package:jessiepay/Presentation/Screens/onBoarding/model/onboard_data.dart';
import 'package:jessiepay/Presentation/helpers/app_styles.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/helpers/size_configs.dart';
import 'package:jessiepay/Presentation/widgets/buttons/my_text_button.dart';
import 'package:jessiepay/Presentation/widgets/buttons/onboard_nav_btn.dart';
import 'package:jessiepay/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        shape: BoxShape.circle,
      ),
    );
  }

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
    // this will set seenOnboard to true when running onboard page for first time.
  }

  @override
  void initState() {
    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.darken),
                image: AssetImage('assets/slpas.png'))),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    // Stack(children: [

                    // ],),
                    // SizedBox(
                    //   height: sizeV * 5,
                    // ),

                    // SizedBox(
                    //   height: sizeV * 5,
                    // ),
                    SizedBox(
                      height: sizeV * 5,
                    ),
                    Container(
                      width: double.infinity,
                      // color: Colors.red,
                      height: sizeV * 45,
                      child: Image.asset(
                        onboardingContents[index].image,
                        alignment: Alignment.bottomCenter,
                        fit:
                            onboardingContents[index].image == 'assets/Bit2.png'
                                ? BoxFit.contain
                                : BoxFit.fill,
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        // height: MediaQuery.of(context).size.height * 7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50.h,
                            ),
                            Text(
                              onboardingContents[index].title,
                              style: TextStyle(
                                // fontFamily: 'Klasik',
                                fontSize: SizeConfig.blockSizeH! * 8,
                                color: kPrimaryColor,
                                // color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                onboardingContents[index].desc,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: kPrimaryColor.withOpacity(0.8),
                                  fontSize: SizeConfig.blockSizeH! * 4.5,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // RichText(
                    //   textAlign: TextAlign.center,
                    //   text: TextSpan(
                    //     style: kBodyText1,
                    //     children: [
                    //       TextSpan(text: 'WE CAN '),
                    //       TextSpan(
                    //           text: 'HELP YOU ',
                    //           style: TextStyle(
                    //             color: kPrimaryColor,
                    //           )),
                    //       TextSpan(text: 'TO BE A BETTER '),
                    //       TextSpan(text: 'VERSION OF '),
                    //       TextSpan(
                    //         text: 'YOURSELF ',
                    //         style: TextStyle(
                    //           color: kPrimaryColor,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    // SizedBox(
                    //   height: sizeV * 5,
                    // ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      currentPage == onboardingContents.length - 1
                          ? Expanded(
                              child: MyTextButton(
                                buttonName: 'Get Started',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => GateWayScreen(),
                                      ));
                                },
                                bgColor: kPrimaryColor,
                              ),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OnBoardNavBtn(
                                  color: kSecondaryColor,
                                  name: 'Skip',
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpPage()));
                                  },
                                ),
                                Row(
                                  children: List.generate(
                                    onboardingContents.length,
                                    (index) => dotIndicator(index),
                                  ),
                                ),
                                OnBoardNavBtn(
                                  name: 'Next',
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration: Duration(milliseconds: 400),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                )
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
