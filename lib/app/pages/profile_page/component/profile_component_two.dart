import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class ProfilePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildProfileItem("First Name", "John"),
          buildDivider(),
          buildProfileItem("Last Name", "Doe"),
          buildDivider(),
          buildProfileItem("Phone", "+62123456789"),
          buildDivider(),
          buildProfileItem("Email", "JohnDoe@gmail.com"),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  Widget buildProfileItem(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: greyColor, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          value,
          style: TextStyle(color: greyColor),
        ),
        SizedBox(height: 5),
      ],
    );
  }

  Widget buildDivider() {
    return SizedBox(height: 15, child: Divider(color: greyColor));
  }
}
