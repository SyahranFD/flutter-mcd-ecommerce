import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/signup_page_view.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage2 extends StatefulWidget {
  @override
  _SignupPage2State createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  bool _isPasswordVisible = false;
  TextEditingController _namaController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: height * 0.015),
        Container(
          width: width * 0.7,
          height: height * 0.09,
          child: TextFormField(
            controller: _namaController,
            decoration: InputDecoration(
              labelText: 'Name',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: greyColor),
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          width: width * 0.7,
          height: height * 0.09,
          child: TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: greyColor),
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          width: width * 0.7,
          height: height * 0.09,
          child: TextFormField(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            controller: _phoneController, // Menggunakan _phoneController
            decoration: InputDecoration(
              labelText: 'Phone',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: greyColor),
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.015),
        Container(
          width: width * 0.7,
          height: height * 0.09,
          child: TextFormField(
            obscureText: !_isPasswordVisible,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: greyColor),
              ),
              suffixIcon: IconButton(
                icon: _isPasswordVisible
                    ? Icon(Icons.visibility, color: primaryColor)
                    : Icon(Icons.visibility_off, color: primaryColor),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
