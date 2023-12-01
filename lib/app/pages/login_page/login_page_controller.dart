import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageController extends GetxController {

  late final SharedPreferences prefs;
  RxBool isSuccess = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  loginAction(String username, password) async {
    prefs = await SharedPreferences.getInstance();
    if (username == "admin" && password == "admin") {
      await prefs.setString('username', username);
      Get.off(HomePageView());
      isSuccess.value = true;
    }
  }
}
