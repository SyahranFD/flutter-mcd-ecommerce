import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/login_image.svg', height: height * 0.3),
          SizedBox(height: 2),
          Text(
            'Welcome Back!',
            style: TextStyle(
              color: Colors.black,
              fontSize: height * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}
