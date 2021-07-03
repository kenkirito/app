import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "LoginPage",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 6.0,
        ),
      ),
    );
  }
}
