import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../base/base_client.dart';
import '../helper/baseController.dart';

class OTPController with BaseController {
  void otp(
    String email,
    String otp,
  ) async {
    var request = {
      "email": email,
      "otp": otp,
    };

    print(request);

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/verify-otp', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result['token']);

    // Get.off(SellerHomePage());
    // onCompleted;

    var token = result['token'];
    // GetStorage()
    //     .write('token', token)
    //     .whenComplete(() => Get.offAll(() => EditBuyerProfilePage()));
  }

  void otpSeller(
    String email,
    String otp,
  ) async {
    var request = {
      "email": email,
      "otp": otp,
    };

    print(request);

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/verify-otp', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result['token']);

    var token = result['token'];
    // GetStorage()
    //     .write('token', token)
    //     .whenComplete(() => Get.offAll(() => EditMerchantProfilePage()));

    // var id = result['data']['user']['id'];

    // print('id $id');

    // GetStorage().write('userId', id);

    // GetStorage().write('email', email);
  }

  void resendOtp(
    String email,
  ) async {
    var request = {
      "email": email,
      "otp": otp,
    };

    print(request);

    showLoading('Posting data...');

    var response = await BaseClient()
        .postSignUp('/api/v1/users/resend-otp', request)
        .catchError(handleError);
    if (response == null) return;

    hideLoading();

    var result = jsonDecode(response);
    print(result);

    // var token = result['token'];
    // GetStorage()
    //     .write('token', token)
    //     .whenComplete(() => Get.offAll(() => EditMerchantProfilePage()));

    // var id = result['data']['user']['id'];

    // print('id $id');

    // GetStorage().write('userId', id);

    // GetStorage().write('email', email);
  }
}

// /api/v1/users/resend-otp