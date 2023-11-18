import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
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
          Container(
            height: height * 0.3, 
            child: SvgPicture.asset('assets/images/login_image.svg'),
          ),
          Text(
            'Welcome back!',
            style: TextStyle(
              color: blackColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
