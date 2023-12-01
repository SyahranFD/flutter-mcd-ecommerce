import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product_firebase.dart';
import 'package:get/get.dart';

class AllMenuFirebaseController extends GetxController {
  RxList<ProductFirebase> allMenuFirebase = <ProductFirebase>[].obs;
  RxList<ProductFirebase> burgerFirebase = <ProductFirebase>[].obs;
  RxList<ProductFirebase> chickenFirebase = <ProductFirebase>[].obs;
  RxList<ProductFirebase> drinkFirebase = <ProductFirebase>[].obs;
  RxList<ProductFirebase> dessertFirebase = <ProductFirebase>[].obs;
  RxList<ProductFirebase> breakfastFirebase = <ProductFirebase>[].obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> streamProduct() async* {
    yield* firestore
        .collection("menu")
        .orderBy(FieldPath.documentId)
        .snapshots();
  }

  void syncFirebase() {
    burgerFirebase.clear();
    chickenFirebase.clear();
    drinkFirebase.clear();
    dessertFirebase.clear();
    breakfastFirebase.clear();

    burgerFirebase.addAll(allMenuFirebase);
    chickenFirebase.addAll(allMenuFirebase);
    drinkFirebase.addAll(allMenuFirebase);
    dessertFirebase.addAll(allMenuFirebase);
    breakfastFirebase.addAll(allMenuFirebase);

    burgerFirebase.assignAll(
        burgerFirebase.where((product) => product.id.startsWith("burger-"))
            .toList());
    chickenFirebase.assignAll(
        chickenFirebase.where((product) => product.id.startsWith("chicken-"))
            .toList());
    drinkFirebase.assignAll(
        drinkFirebase.where((product) => product.id.startsWith("drink-"))
            .toList());
    dessertFirebase.assignAll(
        dessertFirebase.where((product) => product.id.startsWith("dessert-"))
            .toList());
    breakfastFirebase.assignAll(breakfastFirebase.where((product) =>
        product.id.startsWith("breakfast-")).toList());

    allMenuFirebase.shuffle();
  }
}
