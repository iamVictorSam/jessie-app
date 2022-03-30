import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jessiepay/services/base/base_client.dart';

import '../helper/baseController.dart';

// import 'package:get_storage/get_storage.dart';

class EditProfileController with BaseController {
  Future editBuyerProfile(String firstName, lastName, dob, gender, nin, phone,
      homeAddress, state) async {
    String email = GetStorage().read('email');

    var request = {
      "firstName": firstName,
      "lastName": lastName,
      "dob": dob,
      "gender": gender,
      "nin": nin,
      "phone": phone,
      "emailAddress": email,
      "homeAddress": homeAddress,
      "state": state,
    };

    var response = await BaseClient()
        .put(
          '/api/v1/users/updateProfile',
          request,
        )
        .catchError(handleError);
    if (response == null) return;
    // hideLoading();

    print(jsonDecode(response));
  }

  Future editSellerProfile(String firstName, lastName, dob, gender, nin, phone,
      homeAddress, state) async {
    String email = GetStorage().read('email');

    var request = {
      "firstName": firstName,
      "lastName": lastName,
      "dob": dob,
      "gender": gender,
      "nin": nin,
      "phone": phone,
      "emailAddress": email,
      "homeAddress": homeAddress,
      "state": state,
    };

    var response = await BaseClient()
        .put(
          '/api/v1/users/updateProfile',
          request,
        )
        .catchError(handleError);
    if (response == null) return;
    // hideLoading();

    print(jsonDecode(response));
  }

  // api/v1/user/users/customer/shipping/330

}
