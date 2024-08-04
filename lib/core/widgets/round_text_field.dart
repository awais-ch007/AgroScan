// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:facebook_clone/features/constants/constants.dart';

class RoundTextField extends StatelessWidget {
  const RoundTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.textInputAction,
    required this.icon,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;

  final TextInputAction textInputAction;
  final IconData icon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
          color: Colors.black54, fontSize: 18, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Constants.blackColor.withOpacity(.3),
          ),
          hintText: hintText,
          border: InputBorder.none),
      obscureText: isPassword,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      validator: validator,
    );
  }
}
