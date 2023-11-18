import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/editProfile.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class HistoryPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return SizedBox(
      height: 50,
      child: Container(
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
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "History",
              style: TextStyle(color: blackColor, fontSize: width * 0.04),
            ),
          ],
        ),
      ),
    );
  }
}