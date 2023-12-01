import 'package:flutter/cupertino.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu_firebase.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/widgets/grid_view_product.dart';
import 'package:get/get.dart';

final MenuPageController menuPageController = Get.put(MenuPageController());
final AllMenuFirebaseController allMenuFirebaseController = Get.put(AllMenuFirebaseController());

Widget switchCaseGridViewProduct({required context}) {
  switch (menuPageController.selectedCategoryIndex.value) {
    case 0:
      return gridViewProduct(context: context, controller: allMenuFirebaseController.allMenuFirebase);
    case 1:
      return gridViewProduct(context: context, controller: allMenuFirebaseController.burgerFirebase);
    case 2:
      return gridViewProduct(context: context, controller: allMenuFirebaseController.chickenFirebase);
    case 3:
      return gridViewProduct(context: context, controller: allMenuFirebaseController.drinkFirebase);
    case 4:
      return gridViewProduct(context: context, controller: allMenuFirebaseController.dessertFirebase);
    case 5:
      return gridViewProduct(context: context, controller: allMenuFirebaseController.breakfastFirebase);
    default:
      throw UnimplementedError("Unhandled category index: " + menuPageController.selectedCategoryIndex.value.toString());
  }
}