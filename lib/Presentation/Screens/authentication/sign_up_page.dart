import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jessiepay/Presentation/Screens/authentication/login_page.dart';
import 'package:jessiepay/Presentation/helpers/bottom_nav.dart';
import 'package:jessiepay/Presentation/widgets/buttons/small_text_button.dart';

import 'package:jessiepay/Presentation/helpers/constants.dart';
import 'package:jessiepay/Presentation/widgets/buttons/large_icon_button.dart';
import 'package:jessiepay/Presentation/widgets/buttons/my_text_button.dart';

import 'package:jessiepay/Presentation/widgets/buttons/validators.dart';
import 'package:jessiepay/Presentation/widgets/fields/my_password_field.dart';
import 'package:jessiepay/Presentation/widgets/fields/my_text_form_field.dart';

import '../../helpers/app_styles.dart';
import '../../helpers/size_configs.dart';
import '../../widgets/fields/my_check_box.dart';
import '../home_new/home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _signUpKey = GlobalKey<FormState>();

  void onSubmit() {
    _signUpKey.currentState!.validate();
    if (_signUpKey.currentState!.validate()) {
      _signUpKey.currentState!.save();
      // KeyboardUtil.hideKeyboard(context);
      Get.offAll(MainScreeen());
    }
  }

  List<FocusNode> _signUpFocusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    _signUpFocusNodes.forEach((element) {
      element.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Container(
                  child:
                      Image.asset('assets/images/auth/signup_illustration.png'),
                ),
                SizedBox(
                  height: height * 2,
                ),
                Text(
                  'Create Your Account',
                  style: kTitle2,
                ),
                SizedBox(
                  height: height * 2,
                ),
                Form(
                  key: _signUpKey,
                  child: Column(
                    children: [
                      MyTextFormField(
                        fillColor: Colors.blueAccent.withOpacity(0.1),
                        hint: 'Full Name',
                        icon: Icons.person,
                        inputAction: TextInputAction.next,
                        inputType: TextInputType.name,
                        focusNode: _signUpFocusNodes[0],
                        validator: nameValidator,
                      ),
                      MyTextFormField(
                        fillColor: Colors.blueAccent.withOpacity(0.1),
                        hint: 'Username',
                        icon: Icons.person,
                        inputAction: TextInputAction.next,
                        inputType: TextInputType.name,
                        focusNode: _signUpFocusNodes[0],
                        validator: nameValidator,
                      ),
                      MyTextFormField(
                          hint: 'Email',
                          icon: Icons.email_outlined,
                          fillColor: Colors.blueAccent.withOpacity(0.1),
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          focusNode: _signUpFocusNodes[1],
                          validator: emailValidator),
                      MyTextFormField(
                          hint: 'Phone number',
                          icon: Icons.phone,
                          fillColor: Colors.blueAccent.withOpacity(0.1),
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          focusNode: _signUpFocusNodes[1],
                          validator: emailValidator),

                      MyPasswordField(
                        fillColor: Colors.blueAccent.withOpacity(0.1),
                        focusNode: _signUpFocusNodes[2],
                        validator: passwordValidator,
                      ),
                      RefTextFormField(
                        fillColor: Colors.blueAccent.withOpacity(0.1),
                        hint: 'Referral (Optional)',
                        icon: Icons.people,
                        inputAction: TextInputAction.next,
                        inputType: TextInputType.name,
                        focusNode: _signUpFocusNodes[3],
                      ),
                      MyCheckBox(
                        text: 'Keep me signed in',
                      ),
                      // MyCheckBox(
                      //   text: 'Email me about special pricing and more',
                      // ),
                      MyTextButton(
                        buttonName: 'Create Account',
                        onPressed: onSubmit,
                        bgColor: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 16),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Divider(
                //           height: 3,
                //           color: kSecondaryColor.withOpacity(0.4),
                //         ),
                //       ),
                //       Text(
                //         'Or sign in with',
                //         style: kBodyText3,
                //       ),
                //       Expanded(
                //         child: Divider(
                //           height: 3,
                //           color: kSecondaryColor.withOpacity(0.4),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // // Row(
                //   children: [
                //     Expanded(
                //       child: LargeIconButton(
                //         buttonName: 'Google',
                //         iconImage: 'assets/images/auth/google_icon.png',
                //       ),
                //     ),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Expanded(
                //         child: LargeIconButton(
                //       buttonName: 'Facebook',
                //       iconImage: 'assets/images/auth/facebook_icon.png',
                //     )),
                //   ],
                // ),

                SizedBox(height: height * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: kBodyText3,
                    ),
                    SmallTextButton(
                      buttonText: 'Sign in',
                      page: LoginPage(),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
