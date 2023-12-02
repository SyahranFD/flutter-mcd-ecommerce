import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/splash_screen/splash_screen_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_view.dart'; // Gantilah dengan import halaman yang sesuai

class SplashScreenView extends StatelessWidget {
  SplashScreenController splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/images/logo_mcd.png'), 
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
