import 'package:flutter/material.dart';

class loginPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            // Implement login logic and navigate to homePage
            Navigator.pushReplacementNamed(context, '/homePage');
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
          ),
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            // Implement navigation to SignUp page
            Navigator.pushReplacementNamed(context, '/SignupPageView');
          },
          child: Text(
            "Already have an account? Sign In now.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}