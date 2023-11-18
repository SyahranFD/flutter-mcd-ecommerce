import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/history_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class HistoryPageView extends StatelessWidget {
  final HistoryPageController historyPageController =
      Get.put(HistoryPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return Scaffold(
      backgroundColor: backgroundPageColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        toolbarHeight: mediaQuery.height * 0.09,
        title: Text('History', style: ts18SemiboldBlack),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.2),
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: width * 0.1,
                        height: width * 0.1,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.shopping_bag, color: whiteColor),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text( 
                                "06 Oct 2023",
                                style: TextStyle(
                                    color: greyColor, fontSize: width * 0.03),
                              ),
                              SizedBox(width: width * 0.05),
                              Text(
                                "Completed",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: width * 0.03),
                              ),
                            ],
                          ),
                          SizedBox(height: width * 0.01),
                          Text(
                            "Mcdonald’s Kaliurang, Yogyakarta",
                            style: TextStyle(
                              color: blackColor,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: width * 0.01),
                          Text(
                            "1 PaNas Spesial, 2 Chicken Muffin",
                            style: TextStyle(
                                color: blackColor, fontSize: width * 0.03),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.02),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: greyColor,
                  ),
                  SizedBox(height: width * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "32.000",
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: width * 0.04,
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              Container(
                                width: width * 0.2,
                                height: width * 0.06,
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius:
                                      BorderRadius.circular(width * 0.04),
                                ),
                                child: Center(
                                  child: Text(
                                    "Saved 22K",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: width * 0.03),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "3 items",
                        style:
                            TextStyle(color: greyColor, fontSize: width * 0.03),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.01),
                  Container(
                    width: width * 0.55,
                    height: width * 0.1,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: greyColor),
                      borderRadius: BorderRadius.circular(width * 0.04),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Rate Your Food",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        Obx(() => Row(
                              children: List.generate(5, (index) {
                                return GestureDetector(
                                  onTap: () {
                                    historyPageController.selectedStar.value =
                                        index + 1;
                                  },
                                  child: Icon(
                                    index <
                                            historyPageController
                                                .selectedStar.value
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: index <
                                            historyPageController
                                                .selectedStar.value
                                        ? primaryColor
                                        : greyColor,
                                  ),
                                );
                              }),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}