import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_app/Pages/models/catalog.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          hoverColor: Color(0xfff5f5f5),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPge(
                catalog: catalog,
              ),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(context.accentColor).bold.make(),
              catalog.desc.text.xs.gray400.make(),
              20.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.extraBold.minFontSize(15).make(),
                  _AddtoCart()
                ],
              ).pOnly(right: 15.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(130).make().py16();
  }
}

class _AddtoCart extends StatefulWidget {
  const _AddtoCart({
    Key? key,
  }) : super(key: key);

  @override
  __AddtoCartState createState() => __AddtoCartState();
}

class __AddtoCartState extends State<_AddtoCart> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: "Add to cart".text.make());
  }
}
