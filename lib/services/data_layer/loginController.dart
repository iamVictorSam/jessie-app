import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../base/base_client.dart';
import '../helper/baseController.dart';

class LoginController with BaseController {
  void loginBuyer(String email, String password) async {
    var request = {
      "email": email,
      "password": password,
    };

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/buyer/login', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result);

    var token = result['token'];
    // var id = result['data']['user']['id'];

    // print('id $id');

    // GetStorage().write('userId', id);

    // GetStorage().write('email', email);

    // GetStorage()
    //     .write('token', token)
    //     .whenComplete(() => Get.offAll(() => BuyerHomePage()));
  }

  void loginSeller(
    String email,
    String password,
  ) async {
    var request = {
      "email": email,
      "password": password,
    };

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/seller/login', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result);

    var token = result['token'];
    // var id = result['data']['user']['id'];

    // print('id $id');

    // GetStorage().write('userId', id);

    // GetStorage().write('email', email);

    // GetStorage()
    //     .write('token', token)
    //     .whenComplete(() => Get.offAll(() => SellerHomePage()));
  }

  void forgotPassword(
    String email,
  ) async {
    var request = {
      "email": email,
    };

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/forgotPassword', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result);

    // Get.offAll(() => SignInPager());
  }

  void resetPassword(
    String email,
  ) async {
    var request = {
      "email": email,
    };

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/resetPassword', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result);

    GetStorage().remove('token');

    // GetStorage()
    //     .remove('email')
    //     .whenComplete(() => Get.offAll(() => SignInPager()));
  }
}
