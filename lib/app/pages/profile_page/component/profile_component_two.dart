import 'package:flutter/material.dart';

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
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          value,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 4),
      ],
    );
  }

  Widget buildDivider() {
    return SizedBox(height: 12, child: Divider(color: Colors.grey));
  }
}