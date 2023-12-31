import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu_firebase.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product_firebase.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/widgets/switch_case_grid_view_product.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../common/helper/themes.dart';

Widget cardProductHomePage({required context, required dataList}) {
  final CartPageController cartController = Get.put(CartPageController());
  final AllMenuFirebaseController allMenuFirebaseController = Get.put(AllMenuFirebaseController());

  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
        height: height * 0.35,
        margin: EdgeInsets.only(left: width * 0.05),
        child: StreamBuilder(
            stream: allMenuFirebaseController.streamProduct(),
            builder: (context, snapshot) {

              if (snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (snapshot.data!.docs.isEmpty){
                return Center(
                  child: Text("No Product"),
                );
              }

              if (allMenuFirebaseController.allMenuFirebase.isEmpty) {
                for (var elemen in snapshot.data!.docs) {
                  allMenuFirebaseController.allMenuFirebase.add(ProductFirebase.fromMap(elemen.data()));
                  allMenuFirebaseController.allMenuFirebase.sort((a, b) => a.name.compareTo(b.name));
                }
              }

              allMenuFirebaseController.syncFirebase();

            return ListView.builder(
              itemCount: dataList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                var product = dataList[index];
                var formattedPrice =
                    NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ')
                        .format(product.price);
                formattedPrice = formattedPrice.replaceAll(",00", "");

                return Obx(() {
                  bool isSelected = cartController.isProductSelected(product);
                  return Container(
                    width: width * 0.375,
                    margin: EdgeInsets.only(right: width * 0.035, bottom: height * 0.0075),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 3),
                          spreadRadius: 0,
                        )
                      ],
                      border: Border.all(
                        color: isSelected ? primaryColor : Colors.transparent,
                        width: 5,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.network(product.image, fit: BoxFit.fitHeight),
                            SizedBox(height: height * 0.01),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: width * 0.1,
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(product.name, style: ts12MediumBlack, overflow: TextOverflow.ellipsis, maxLines: 2),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.005),
                                  Text(formattedPrice, style: ts12MediumGrey),
                                ],
                              ),
                            ),
                          ],
                        ),
                        isSelected
                            ? Container(
                                margin: EdgeInsets.symmetric(horizontal: width * 0.005),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        cartController.decrementProductQuantity(product);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        minimumSize: Size(width * 0.07, width * 0.07),
                                        backgroundColor: primaryColor,
                                      ),
                                      child: Icon(Icons.remove, color: blackColor, size: 16),
                                    ),

                                    Text(product.quantity.toString(), style: ts14MediumBlack, textAlign: TextAlign.center,),

                                    ElevatedButton(
                                      onPressed: () {
                                        cartController.incrementProductQuantity(product);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        minimumSize: Size(width * 0.07, width * 0.07),
                                        backgroundColor: primaryColor,
                                      ),
                                      child: Icon(Icons.add, color: blackColor, size: 16),
                                    ),
                                  ],
                                ),
                              )
                            : Container(
                                height: height * 0.038,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: width * 0.005, vertical: height * 0.008),
                                child: ElevatedButton(
                                  onPressed: () {
                                    cartController.addToSelectedProducts(product);
                                    cartController.incrementProductQuantity(product);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child:
                                      Icon(Icons.add, size: 20, color: blackColor),
                                ),
                              ),
                      ],
                    ),
                  );
                });
              },
            );
          }
        ),
      );
}