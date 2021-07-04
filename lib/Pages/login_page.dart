import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(children: [
          Image.asset(
            "assests/images/Login_home.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "welcome",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter username", labelText: "Username"),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter password", labelText: "Password"),
          ),
        ]));
  }
}
