import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends GetxController {
  RxBool isRoutingFromHomePage = false.obs;
  late final SharedPreferences prefs;
  RxString strName = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    strName.value = prefs.getString('username') ?? "no data";
  }

  void logoutAction() async{
    await prefs.remove('username');
    Get.offNamed('login');
  }  
}
