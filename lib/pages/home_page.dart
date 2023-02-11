import 'package:codepur_flutter_catalog/models/catalog.dart';
import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "LoneWolf";

  const HomePage({super.key});
//Day 11 we learnt about context and constraints

  @override
  Widget build(BuildContext context) {
    //Catalog models ahe ithe khali
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              // item: CatalogModel.items[index],
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
