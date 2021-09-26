import 'package:flutter/material.dart';

import '../constance.dart';
import '../info.dart';
class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kpaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kpaddin),
            height:50 ,
            width: 50,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15) ,border: Border.all(color: products.color)),
            child: IconButton(icon:Icon(Icons.shopping_cart,color: products.color,), onPressed: (){}),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: products.color,
                onPressed: (){},
                child: Text('buy now'.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
