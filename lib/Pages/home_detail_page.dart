import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/models/catalog.dart';
import 'package:flutter_app/widge/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPge extends StatelessWidget {
  final Item catalog;

  const HomeDetailPge({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var captionStyle = context.captionStyle;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.extraBold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "add to cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h24(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text.xl.textStyle(captionStyle!).make().p4(),
                      "Vero stet ea clita eos invidunt nonumy sed. Vero stet ea clita eos invidunt nonumy sed Vero stet ea clita eos invidunt nonumy sed magna stet sanctus ea et, kasd est ut duo sadipscing tempor dolore elitr labore, kasd magna tempor justo takimata est amet ipsum, aliquyam et eos sit stet. Aliquyam clita."
                          .text
                          .textStyle(captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
