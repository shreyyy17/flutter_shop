import 'package:flutter/material.dart';
import 'package:flutter_shop/constance.dart';

import '../info.dart';

class colorandsize extends StatelessWidget {
  const colorandsize({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("color"),
              Row(
                children: <Widget>[
                  colordot(color: Color(0xFF3D82AE),isSelected: true,),
                  colordot(color: Color(0xFFD3A984),),
                  colordot(color: Color(0xFF989493),),
                ],
              )

            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
            style: TextStyle(color: ktextcolor),
            children:[ TextSpan(text: 'size\n'),
              TextSpan(text: '${products.size}cm',style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold))],
          )),
        )
      ],
    );
  }
}
class colordot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const colordot({
    Key key,this.color,this.isSelected = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kpaddin/4,
        right: kpaddin/2,
      ),
      padding: EdgeInsets.all(1.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
          Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}