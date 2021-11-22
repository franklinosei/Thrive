import 'package:flutter/material.dart';

const buttonColor = Color(0xFF09566A);
const blackColor = Color(0xFF1F1F1F);
const ashColor = Color(0xFFD0D0D0);
const secondaryColor = Color(0xFF9F0203);
const primaryColor = Color(0xFF09566A);
const bgColor = Color(0xFFF8F8FB);
const bgColor1 = Color(0xFF7399A3);
const whiteColor = Color(0xFFFFFFFF);
const lightOrangeColor = Color(0xFFFFCE9E);
const textColor = Colors.black;

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: textColor),
  contentPadding: EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 20,
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    borderSide: BorderSide(
      color: Colors.black,
    ),
  ),
  // border: OutlineInputBorder(
  //   borderRadius: BorderRadius.all(
  //     Radius.circular(20),
  //   ),
  //   borderSide: BorderSide(
  //     color: Colors.grey,
  //   ),
  // ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),

  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),

  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),
);
