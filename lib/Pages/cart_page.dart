import 'package:flutter/material.dart';
import 'package:flutter_app/widge/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
    );
  }
}
