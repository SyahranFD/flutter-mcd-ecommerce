import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/editProfile.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class ProfilePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return Container(
      height: mediaQuery.height * 0.1,
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
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: mediaQuery.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Account",
            style: TextStyle(color: blackColor, fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
            child: Text(
              "Edit",
              style: TextStyle(color: primaryColor, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
