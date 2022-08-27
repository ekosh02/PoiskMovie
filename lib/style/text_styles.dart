import 'package:flutter/material.dart';

abstract class TextStyles {
  static const TextStyle title1Bold = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle title1Semibold = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle title2Semibold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle title2Regular = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  //---------------------------------------------------------

  static const TextStyle headline1Regular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const TextStyle headline1RegularGray = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Color(0xff333741),
  );

  //---------------------------------------------------------

  static const TextStyle text1Regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const TextStyle text1Medium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const TextStyle text1RegularRed = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.red,
  );
}
