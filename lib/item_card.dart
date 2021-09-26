import 'package:flutter/material.dart';
import 'constance.dart';
import 'info.dart';

class itemcard extends StatelessWidget {
  final Products products;
  final Function press;

  itemcard({Key key, this.products, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kpaddin),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: products.color, borderRadius: BorderRadius.circular(16)),
              child: Hero(tag: "${products.id}",child: Image.asset(products.image)),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: kpaddin / 4),
              child: Text(
                products.title,
                style: TextStyle(color: ktextcolor),
              )),
          Text(
            '\$${products.price}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
