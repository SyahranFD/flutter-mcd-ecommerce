import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/splash_screen/splash_screen_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_view.dart'; // Gantilah dengan import halaman yang sesuai

class SplashScreenView extends StatelessWidget {
  SplashScreenController splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed("login");
    });

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.indigo,
          child: Text('Ini halaman splash screen'),
        ),
      ),
    );
  }
}
