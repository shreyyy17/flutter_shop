import 'package:flutter/material.dart';
class Products{
  final String image,title,description;
  final int price,size,id;
  final Color color;
  Products({
    this.id,
    this.image,
    this.description,
    this.price,
    this.color,
    this.size,
    this.title,
});
}
List<Products>product=[
  Products(
      id: 1,
      title: 'Office code',
      size: 12,
    image: "Image/bag_1.png",
    description: dummytext,
    color:Color(0xFF3D82AE),
    price: 234,
  ),
  Products(
      id: 2,
      title: 'Belt bag',
      size: 8,
    image: "Image/bag_2.png",
    description: dummytext,
    color:Color(0xFFD3A984),
    price: 234,
  ),
  Products(
      id: 3,
      title: 'black purse',
      size: 10,
    image: "Image/bag_3.png",
    description: dummytext,
    color:Color(0xFF989493),
    price: 234,
  ),
  Products(
      id: 4,
      title: 'Office code',
      size: 12,
    image: "Image/bag_4.png",
    description: dummytext,
    color:Color(0xFFE6B398),
    price: 234,
  ),
  Products(
      id: 5,
      title: 'Office code',
      size: 12,
    image: "Image/bag_5.png",
    description: dummytext,
    color:Color(0xFFFB7883),
    price: 234,
  ),
  Products(
      id: 6,
      title: 'Office code',
      size: 12,
    image: "Image/bag_6.png",
    description: dummytext,
    color:Color(0xFFAEAEAE),
    price: 234,
  )

];
String dummytext = 'A bag is a standout amongst the most vital adornments for a lady. It characterizes a lady\'s style and finishes her look. There are bags for each event and picking Luxury handbags and accessories are a craftsmanship in itself.' ;