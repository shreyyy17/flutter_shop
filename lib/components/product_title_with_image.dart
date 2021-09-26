import 'package:flutter/material.dart';
import 'package:flutter_shop/info.dart';
import 'package:flutter_shop/constance.dart';

class productTitlewithimage extends StatelessWidget {
  const productTitlewithimage({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kpaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Aristrocratic Hand Bag',style: TextStyle(color: Colors.white),),
          Text(products.title,style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white),),
          Row(
            children: <Widget>[
              RichText(text: TextSpan(
                children:[ TextSpan(text: 'Price\n'),TextSpan(text: '\$${products.price}',style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),],
              ),
              ),
              SizedBox(width: kpaddin*2),
              Expanded(child: Hero(tag: "${products.id}",child: Image.asset (products.image,fit: BoxFit.fitWidth))),
            ],

          )
        ],),
    );
  }
}
