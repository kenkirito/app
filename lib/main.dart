import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double days = 30;
    String name = "coderpur";

    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("welcome to $days  days flutter by $name"),
          ),
        ),
      ),
    );
  }
}
