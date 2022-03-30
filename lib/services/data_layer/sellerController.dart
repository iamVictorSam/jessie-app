import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../base/base_client.dart';
import '../helper/baseController.dart';
import 'models/cate_products.dart';

// import 'package:get_storage/get_storage.dart';

class SellerController with BaseController {
// Create Product
  Future createProduct(String title, desc, price) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .postWithBearer('/api/v1/users/admin/product', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future editProduct(String title, desc, price) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .put('/api/v1/users/admin/product', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future deleteProduct() async {
    showLoading('Loading');
    try {
      var response = await BaseClient()
          .delete(
            '/api/v1/users/admin/product',
          )
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future createCategories(String title, desc, price) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .postWithBearer('/api/v1/users/admin/category', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future editCategories(String title, desc, price) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .put('/api/v1/users/admin/product', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future deleteCategories() async {
    showLoading('Loading');
    // print(request);
    try {
      var response = await BaseClient()
          .delete(
            '/api/v1/users/admin/category',
          )
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future createCollection(String title, desc, price) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .postWithBearer('/api/v1/users/admin/collection', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future editCollection(String title, desc, price) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .put('/api/v1/users/admin/collection', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future deleteCollection() async {
    showLoading('Loading');
    // print(request);
    try {
      var response = await BaseClient()
          .delete(
            '/api/v1/users/admin/collection',
          )
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future createStore(
      String name, url, postcode, address, acctType, acctUrl) async {
    var request = {
      "name": name,
      "store_url": url,
      "location": {"postcode": postcode, "address": address},
      "social_web": [
        {
          "account_type": acctType,
          "url": acctUrl,
        }
      ]
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .postWithBearer('/api/v1/store/user/stores/create', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future editStore(String title, desc, price, store_id) async {
    var request = {
      "title": title,
      "description": desc,
      "hasVariant": "false",
      "price": price,
    };
    showLoading('Loading');
    print(request);
    try {
      var response = await BaseClient()
          .put('/api/v1/store/user/stores/$store_id', request)
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }

  Future deleteStore() async {
    showLoading('Loading');
    // print(request);
    try {
      var response = await BaseClient()
          .delete(
            '/api/v1/store/user/stores',
          )
          .catchError(handleError);
      print(jsonDecode(response));
      if (response == null) return;
      // GetStorage()
      //     .write('email', email)
      //     .whenComplete(() => Get.offAll(() => IndividualLoginSuccessPage()));
      // print(GetStorage().read('email'));
      // Get.offAll(() => SignInScreen());
    } catch (e) {
      print(e);
    }
  }
}
