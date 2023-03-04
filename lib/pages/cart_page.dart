import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "                    Cart".text.color(Colors.white).make(),
        ),
        body: Column(
          children: [
            _CartList().p32().expand(),
            Divider(),
            _CartTotal(),
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // ignore: deprecated_member_use
          "\$9999".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    // ignore: deprecated_member_use
                    MaterialStateProperty.all(context.theme.accentColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(
          Icons.done,
          color: Colors.lightGreen,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.remove_circle_outline,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: "Item 1".text.color(Colors.white).make(),
      ),
    );
  }
}
