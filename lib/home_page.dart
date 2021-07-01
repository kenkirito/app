import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final double days = 30;
  final String name = "coderpur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("i like building apps in flutter"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $days  days flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
