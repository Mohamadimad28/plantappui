import 'package:flutter/material.dart';

class Recomened{
  Recomened({required this.title,required this.country,required this.price, required this.image,required this.press,});
  final String image, title, country;
  final int price;
  final Function() press;

}