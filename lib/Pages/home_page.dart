import 'package:flutter/material.dart';
import 'package:flutter_app/widge/drawer.dart';

class Homepage extends StatelessWidget {
  final double days = 30;
  final String name = "coderpur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text(" $days  days flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
