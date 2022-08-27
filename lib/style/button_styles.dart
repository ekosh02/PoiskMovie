import 'package:flutter/material.dart';
import 'package:tmdb_app/style/text_styles.dart';

abstract class ButtonStyles {
  static final ButtonStyle littleMainButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.blue),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    textStyle: MaterialStateProperty.all(TextStyles.headline1Regular),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  );

  static final ButtonStyle littleTransparentButton = ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.blue),
    textStyle: MaterialStateProperty.all(TextStyles.headline1Regular),
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    ),
  );
}
