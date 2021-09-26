import 'package:flutter/material.dart';
import 'components/Body.dart';
import 'package:flutter_shop/constance.dart';
import 'package:flutter_shop/info.dart';

class DetailScreen extends StatelessWidget {
  final Products products;
  const DetailScreen({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      body: Body(products: products),
      appBar: buildAppBar(context),
    );

  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: products.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.west, color: Colors.white),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        SizedBox(
          width: kpaddin / 2,
        ),


      ],
    );
  }
}
