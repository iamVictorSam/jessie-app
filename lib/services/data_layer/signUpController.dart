import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../base/base_client.dart';
import '../helper/baseController.dart';

class SignUpController with BaseController {
  void signupBuyer(
    String email,
    String password,
  ) async {
    var request = {
      "email": email,
      "password": password,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .postSignUp('/api/v1/users/buyer/signup', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      GetStorage().write('email', email);
      // .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
    // hideLoading();
    // else{GetStorage().write('token', token);}
  }

  void signupSeller(
    String email,
    String password,
  ) async {
    var request = {
      "email": email,
      "password": password,
    };

    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .postSignUp('/api/v1/users/seller/signup', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      GetStorage().write('email', email);
      // .whenComplete(() => Get.offAll(() => SuccessMerchantSignUpPage()));
    } catch (e) {
      print(e);
    }
    // hideLoading();
    // else{GetStorage().write('token', token);}
  }
}
