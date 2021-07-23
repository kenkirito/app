import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/models/catalog.dart';
import 'package:flutter_app/widge/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPge extends StatelessWidget {
  final Item catalog;

  const HomeDetailPge({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Column(
          children: [
            Image.network(catalog.image),
          ],
        ).p16(),
      ),
    );
  }
}
