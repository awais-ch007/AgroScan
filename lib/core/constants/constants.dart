import 'package:flutter/material.dart';

class Constants {
  // Default padding for screens
  static const defaultPadding = EdgeInsets.symmetric(
    horizontal: 15,
    vertical: 10,
  );

  // demo profile urls
  static const String maleProfilePic =
      'https://jeremyveldman.com/wp-content/uploads/2019/08/Generic-Profile-Pic.jpg';

  static const String profilePicBlank =
      'https://t3.ftcdn.net/jpg/05/16/27/58/240_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg';

  static var primaryColor = const Color(0xff296e48);
  static var blackColor = Colors.black54;

  //Onboarding texts
  static var titleOne = "The Ultimate Fruit Crop Farming Guide";
  static var descriptionOne =
      "Embark on a journey of fruitful harvests with our comprehensive guide to fruit crop farming";
  static var titleTwo = "Fruit Farming Community";
  static var descriptionTwo =
      "Connect with fellow fruit farmers in a vibrant community. Share insights, discuss disease management strategies, and grow together.";
  static var titleThree = "Detecting Fruit Crop Diseases";
  static var descriptionThree =
      "Identify and combat diseases threatening your fruit crops with precision and speed. ";

  Constants._();
}
