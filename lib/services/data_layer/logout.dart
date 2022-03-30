import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../base/base_client.dart';
import '../helper/baseController.dart';

class LogoutController with BaseController {
  void loginBuyer(String email, String password) async {
    // var request = {
    //   "email": email,
    //   "password": password,
    // };

    showLoading('Posting data...');

    var response = await BaseClient()
        .delete('/api/v1/users/logout')
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
