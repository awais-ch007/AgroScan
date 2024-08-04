import 'package:flutter/material.dart';

import '../../constants/weatherconstants.dart';

class HourlyForecast extends StatelessWidget {
  final String time;
  final String imagepath;
  final String temp;
  const HourlyForecast(
      {super.key,
      required this.time,
      required this.imagepath,
      required this.temp});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;

    Constants myConstants = Constants();
    return Container(
     
      margin: const EdgeInsets.only(right: 20, bottom: 10, top: 10),
      width: screenWidth * 0.2,
      decoration: BoxDecoration(
          color: myConstants.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              blurRadius: 5,
              color: Colors.black54.withOpacity(.2),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: screenHeight * 0.02,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset(
            imagepath,
            width: screenWidth * 0.13,
          ),
          Text(
            temp,
            style: TextStyle(
              fontSize: screenHeight * 0.02,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
