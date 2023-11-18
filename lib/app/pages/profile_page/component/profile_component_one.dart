import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/editProfile.dart';

class ProfilePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Account",
            style: TextStyle(color: Colors.black, fontSize: 18),
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
              style: TextStyle(color: Colors.yellow, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}