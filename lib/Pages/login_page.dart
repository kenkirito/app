import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assests/images/Login_home.png",
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}
