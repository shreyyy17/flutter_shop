import 'package:flutter/material.dart';

import '../constance.dart';
import '../info.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kpaddin),
        child: Text(
          products.description,
          style: TextStyle(height: 1.5),
        ));
  }
}
