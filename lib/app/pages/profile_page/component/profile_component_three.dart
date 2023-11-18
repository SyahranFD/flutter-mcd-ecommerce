import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_view.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class ProfilePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return Container(
      padding: EdgeInsets.all(16),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Kebijakan Privasi",
            style: TextStyle(color: blackColor),
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              showLogoutDialog(context);
            },
            child: Text(
              "Keluar",
              style: TextStyle(color: secondaryColor),
            ),
          ),
        ],
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Apakah Anda yakin ingin keluar?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Tidak"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPageView()),
                );
              },
              child: Text("Iya"),
            ),
          ],
        );
      },
    );
  }
}
