import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/global_component/navbar.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';
import 'common/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: blackColor),
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: Navbar(),
    ),
  );
  
}
