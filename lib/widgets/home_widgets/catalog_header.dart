import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:codepur_flutter_catalog/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.creamColor).make(),
        "Trending Products"
            .text
            .xl2
            .color(Color.fromARGB(255, 206, 203, 203))
            .make(),
      ],
    );
  }
}
