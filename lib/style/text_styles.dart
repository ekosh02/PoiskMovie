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

  static const TextStyle title1BoldWhite = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle title1SemiboldWhite = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle title2SemiboldWhite = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle title2RegularWhite = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Colors.white,
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

  static const TextStyle headline1RegularWhite = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white,
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

  //---------------------------------------------------------

  static const TextStyle text1RegularWhite = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const TextStyle text1MediumWhite = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle text1RegularRed = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.red,
  );

  //---------------------------------------------------------

  static const TextStyle text2Regular = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static const TextStyle text2RegularGrey = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  //---------------------------------------------------------

  static const TextStyle text2RegularWhite = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
}
