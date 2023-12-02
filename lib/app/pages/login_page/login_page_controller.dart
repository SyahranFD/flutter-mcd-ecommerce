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

  loginAction(String username, String password) async {
    prefs = await SharedPreferences.getInstance();
    if (username == "admin" && password == "admin") {
      await prefs.setString('username', username);
      Get.offNamed('/');
      isSuccess.value = true;
    }
  }
}
