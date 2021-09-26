import 'package:flutter_shop/detail_screen.dart';

import 'item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/Category.dart';
import 'info.dart';
import 'constance.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kpaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kpaddin),
            child: GridView.builder(
              itemCount: product.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: kpaddin,crossAxisSpacing: kpaddin,crossAxisCount: 2,childAspectRatio: 0.80),
                itemBuilder: (context, index) => itemcard(
                  products:product[index],
                  press: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen(products: product[index]),),),
                )),
          ),
        ),
      ],
    );
  }
}

