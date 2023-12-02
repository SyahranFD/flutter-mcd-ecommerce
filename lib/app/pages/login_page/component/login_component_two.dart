import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class loginPage2 extends StatelessWidget {
  bool _isPasswordVisible = false;
  TextEditingController _ctrusernameController = TextEditingController(); 
  TextEditingController _ctrPasswordController = TextEditingController(); 
  final LoginPageController loginPageController = Get.put(LoginPageController());

  Widget textFormFieldLogin({required String label, required bool isObsecure, required TextEditingController controller}) {
    return Container(
      width: Get.width * 0.7,
      height: Get.height * 0.09,
      child: TextFormField(
        controller: controller,
        obscureText: isObsecure,
        decoration: InputDecoration(
          labelText: label,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: greyColor),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        
        textFormFieldLogin(label: "Username", isObsecure: false, controller: _ctrusernameController),
        SizedBox(height: 15),
        textFormFieldLogin(label: "Password", isObsecure: true, controller: _ctrPasswordController),
        SizedBox(height: 15),

        ElevatedButton(
          onPressed: () async {
            loginPageController.loginAction(_ctrusernameController.text, _ctrPasswordController.text);
          },
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.width * 0.30,
              vertical: height * 0.02,
            ),
          ),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: height * 0.02),
        GestureDetector(
          onTap: () {
            Get.offNamed("signup");
          },
          child: Text(
            "Don't have an account? Sign Up now.",
            style: TextStyle(
              color: blackColor,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}