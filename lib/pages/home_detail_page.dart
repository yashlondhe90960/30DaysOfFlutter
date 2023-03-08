import 'package:codepur_flutter_catalog/models/catalog.dart';
import 'package:codepur_flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/themes.dart';

class HomeDetailsPage extends StatelessWidget {
  // const HomeDetailsPage({super.key});
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
              ).wh(130, 50),
            ],
          ).p32(),
        ),
        body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                Hero(
                        tag: Key(catalog.id.toString()),
                        child: Image.network(catalog.image))
                    .h32(context),
                Expanded(
                  child: VxArc(
                    height: 30.0,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Column(children: [
                        catalog.name.text.xl4.color(Colors.white).bold.make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .color(Colors.grey)
                            .make(),
                        10.heightBox,
                        "Labore dolor voluptua dolor voluptua et nonumy, sed et et est ut dolor elitr ut, eos dolore et stet accusam nonumy eirmod vero sanctus et, sadipscing dolores vero lorem ipsum et dolores, sed ea no "
                            .text
                            .color(Colors.grey)
                            .textStyle(context.captionStyle)
                            .make()
                            .p16(),
                      ]).py64(),
                    ),
                  ),
                )
              ],
            )));
  }
}
