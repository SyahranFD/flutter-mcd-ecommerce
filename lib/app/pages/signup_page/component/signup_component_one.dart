import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signupPage1 extends StatelessWidget {
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
            child: SvgPicture.asset('assets/images/signup_img.svg'),
          ),
          Text(
            'Become a member!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
