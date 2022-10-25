import 'package:flutter/material.dart';
import 'package:tmdb_app/style/color_set.dart';

abstract class BoxDecorationStyle {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.black26),
    borderRadius: const BorderRadius.all(
      Radius.circular(10),
    ),
    boxShadow: [
      BoxShadow(
        color: ColorSet.dartTheme.withOpacity(0.2),
        offset: const Offset(0, 2),
        blurRadius: 8,
      ),
    ],
  );
}
