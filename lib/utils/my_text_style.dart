
import 'package:flutter/material.dart';

import 'my_colors.dart';

class MyTextStyle {
  static const TextStyle titleStyle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: MyColors.blackColor,
      fontFamily: "Roboto");

  static const TextStyle titleStyleWhite = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: MyColors.whiteColor,
      fontFamily: "Roboto");

  static const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: MyColors.blackColor,
      fontFamily: "Roboto");

  static const TextStyle textLinkStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: MyColors.blueColor,
      fontFamily: "Roboto");

  static const TextStyle textButtonStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
      color: MyColors.whiteColor,
      fontFamily: "Roboto");
}
