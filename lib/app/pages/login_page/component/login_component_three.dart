import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class loginPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            Get.offNamed("/");
          },
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.width * 0.30, 
              vertical: height * 0.03,
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