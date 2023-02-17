import 'package:codepur_flutter_catalog/models/catalog.dart';
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
      appBar: AppBar,
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Column(
            children: [
              Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image)),
            ],
          ).p20(),
        ));
  }
}
