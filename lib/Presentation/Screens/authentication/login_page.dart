import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/authentication/forgot_password_page.dart';
import 'package:jessiepay/Presentation/Screens/authentication/sign_up_page.dart';
import 'package:jessiepay/Presentation/Screens/home_new/home.dart';
import 'package:jessiepay/Presentation/helpers/bottom_nav.dart';
import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/buttons/large_icon_button.dart';
import 'package:jessiepay/Presentation/widgets/buttons/my_text_button.dart';
import 'package:jessiepay/Presentation/widgets/buttons/small_text_button.dart';
import 'package:jessiepay/Presentation/widgets/buttons/validators.dart';
import 'package:jessiepay/Presentation/widgets/fields/my_password_field.dart';
import 'package:jessiepay/Presentation/widgets/fields/my_text_form_field.dart';

import '../../helpers/app_styles.dart';
import '../../helpers/size_configs.dart';

// its best practice to do relative imports

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginKey = GlobalKey<FormState>();

  void onSubmit() {
    _loginKey.currentState!.validate();
    _loginKey.currentState!.validate();
    if (_loginKey.currentState!.validate()) {
      _loginKey.currentState!.save();
      // KeyboardUtil.hideKeyboard(context);
      Get.offAll(MainScreeen());
    }
  }

  List<FocusNode> _loginFocusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    _loginFocusNodes.forEach((element) {
      element.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.blockSizeV!;
    return Stack(
      children: [
        Positioned(
          bottom: height * 2,
          child: Container(
            child: Image.asset('assets/images/auth/login_bg.png'),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Welcome to\nJessie Pay',
                            style: kTitle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                // LargeIconButton(
                                //   buttonName: 'Continue with Google',
                                //   iconImage:
                                //       'assets/images/auth/google_icon.png',
                                // ),
                                // SizedBox(
                                //   height: 10,
                                // ),
                                // LargeIconButton(
                                //   buttonName: 'Continue with Facebook',
                                //   iconImage:
                                //       'assets/images/auth/facebook_icon.png',
                                // )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    'Login with username or email',
                                    style: kBodyText3,
                                  ),
                                  Divider(
                                    height: 30,
                                    color: kPrimaryColor.withOpacity(0.5),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Form(
                                      key: _loginKey,
                                      child: Column(
                                        children: [
                                          MyTextFormField(
                                            hint: 'Username or Email ',
                                            icon: Icons.email_outlined,
                                            fillColor: Colors.blueAccent
                                                .withOpacity(0.1),
                                            inputType:
                                                TextInputType.emailAddress,
                                            inputAction: TextInputAction.next,
                                            focusNode: _loginFocusNodes[0],
                                            validator: emailValidator,
                                          ),
                                          MyPasswordField(
                                            fillColor: Colors.blueAccent
                                                .withOpacity(0.1),
                                            focusNode: _loginFocusNodes[1],
                                            validator: passwordValidator,
                                          ),
                                          MyTextButton(
                                            buttonName: 'Login',
                                            onPressed: onSubmit,
                                            bgColor: kPrimaryColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ForgotPasswordPage()));
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: kBodyText3.copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account? "),
                                      SmallTextButton(
                                        buttonText: 'Sign up',
                                        page: SignUpPage(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
