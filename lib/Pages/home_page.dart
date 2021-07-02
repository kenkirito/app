import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final double days = 30;
  final String name = "coderpur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Catalog app"),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(" $days  days flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
