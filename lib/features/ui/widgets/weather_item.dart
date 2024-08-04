
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class weatherItem extends StatelessWidget {
  const weatherItem({
    Key? key,
    required this.value, required this.text, required this.unit, required this.image,
  }) : super(key: key);

  final String value;
  final String text;
  final String unit;
  final String image;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    return Column(
      children: [
        Text(text, style: const TextStyle(
          color: Colors.black54,
        ),),
         SizedBox(
          height: screenHeight*0.009,
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: screenHeight*0.08,
          width: screenWidth*.16,
          decoration: const BoxDecoration(
            color:  Color(0xff296e48),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Image.asset(image),
        ),
         SizedBox(
          height: screenHeight*0.009,
        ),
        Text(value.toString() + unit, style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),)
      ],
    );
  }
}