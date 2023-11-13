import 'package:flutter/material.dart';

class loginPage2 extends StatefulWidget {
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<loginPage2> {
  bool _isPasswordVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        Container(
          width: 300, 
          height: 65, 
          child: TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
            ),
          ),
        ),
        Container(
          width: 300, 
          height: 65, 
          child: TextFormField(
            obscureText: !_isPasswordVisible,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              suffixIcon: IconButton(
                icon: _isPasswordVisible
                    ? Icon(Icons.visibility, color: Colors.yellow)
                    : Icon(Icons.visibility_off, color: Colors.yellow),
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
