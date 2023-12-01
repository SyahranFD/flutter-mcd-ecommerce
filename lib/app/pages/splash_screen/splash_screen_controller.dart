import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/splash_screen/splash_screen_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if (prefs.getString('username') == null) {
        Get.off(LoginPageView());
      } else {
        Get.off(SplashScreenView());
      }
    });
  }
}
