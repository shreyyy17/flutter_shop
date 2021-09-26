import 'package:flutter/material.dart';

import '../constance.dart';
class Cardcounter extends StatefulWidget {
  const Cardcounter({Key key}) : super(key: key);

  @override
  _CardcounterState createState() => _CardcounterState();
}

class _CardcounterState extends State<Cardcounter> {
  final isSelected=<bool>[false];
  int numofitem=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildSizedBox(icon: Icons.remove,press: (){
          if(numofitem>1)
            setState(() {
              numofitem--;
            });

        }),

        Padding(
          padding: EdgeInsets.symmetric(horizontal:  kpaddin/2),
          child: Text(numofitem.toString().padLeft(2,'0'),style: Theme.of(context).textTheme.headline5,),
        ),
        buildSizedBox(icon: Icons.add,press: (){
          setState(() {
            numofitem ++;
          });

        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:95),
          child: ToggleButtons(
            color: Colors.black.withOpacity(0.60),
            selectedColor: Colors.red,
            borderRadius: BorderRadius.circular(30.0),
            isSelected: isSelected,
            onPressed: (index) {
              // Respond to button selection
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
            children: [
              isSelected[0]
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),

            ],

          ),
        ),

      ],
    );
  }

  SizedBox buildSizedBox({IconData icon,Function press}) {
    return SizedBox(
      height:40 ,
      width: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,onPressed: press,child: Icon(icon),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
    );
  }
}



