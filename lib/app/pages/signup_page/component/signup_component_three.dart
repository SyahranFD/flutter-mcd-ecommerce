import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class signupPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: height * 0.02),
        ElevatedButton(
          onPressed: () {
            Get.offNamed("/");
          },
          style: ElevatedButton.styleFrom(
            primary: secondaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.width * 0.30, 
              vertical: height * 0.02,
            ),
          ),
          child: Text(
            'SignUp',
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: height * 0.02),
        GestureDetector(
          onTap: () {
            Get.offNamed("login");
          },
          child: Text(
            "Already have an account? Sign In now.",
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