import 'package:flutter/material.dart';
import 'constance.dart';
class categories extends StatefulWidget {
  const categories({Key key}) : super(key: key);

  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List<String> categories = ["HandBag", "Jwellery", "Footwear", "Dresses","Glasses"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kpaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return  GestureDetector(
      onTap: (){
        setState(() {
          selectedindex = index;
        });

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kpaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(fontWeight: FontWeight.bold, color: selectedindex == index ? ktextcolor : ktextlightcolor),
            ),
            Container(
              margin: EdgeInsets.only(top: kpaddin / 4),
              height: 2.0,
              width: 25,
              color: selectedindex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
