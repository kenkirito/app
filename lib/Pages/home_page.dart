import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/models/category.dart';
import 'package:flutter_app/widge/drawer.dart';
import 'package:flutter_app/widge/item_widget.dart';

class Homepage extends StatelessWidget {
  final double days = 30;
  final String name = "coderpur";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
