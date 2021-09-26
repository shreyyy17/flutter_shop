import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/constance.dart';
import 'package:flutter_shop/info.dart';
import 'product_title_with_image.dart';
import 'color_and_size.dart';
import 'Description.dart';
import 'Card_counter.dart';
import 'buybutton.dart';

class Body extends StatelessWidget {
  Body({Key key, this.products}) : super(key: key);
  final Products products;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  //height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kpaddin,
                    right: kpaddin,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      colorandsize(products: products),
                      Description(products: products),
                      Cardcounter(),
                      NewWidget(products: products)
                    ],
                  ),
                ),
                productTitlewithimage(products: products),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

