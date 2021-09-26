import 'package:flutter/material.dart';
import 'package:flutter_shop/constance.dart';
import 'body.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: body(),
    );
  }


  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.west,
          color: ktextcolor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: ktextcolor,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: ktextcolor,
            ),
            onPressed: () {}),
        SizedBox(
          width: kpaddin / 2,
        )
      ],
    );
  }
}

