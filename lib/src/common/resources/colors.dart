import 'package:flutter/material.dart';

import '../../common/extension/string_ext.dart';

class AppColors {
  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }

  static bool isLight = true;

  static Color White = (isLight ? "#FFFFFF" : "#FFFFFF").toColor();
  static Color Black = (isLight ? "#000000" : "#000000").toColor();

  static Color Primary = (isLight ? "#2F66F6" : "#436FE2").toColor();
  static Color Secondary = (isLight ? "#696F8C" : "#9096A2").toColor();
  static Color Background = (isLight ? "#F8F9FC" : "#121212").toColor();
  static Color Surface = (isLight ? "#FFFFFF" : "#22283A").toColor();
  static Color Otline = (isLight ? "#D7D9E4" : "#3D455C").toColor();
  static Color Text = (isLight ? "#11183C" : "#E6FFFFFF").toColor();

  static Color Up = (isLight ? "#098C26" : "#31C451").toColor();
  static Color Fall = (isLight ? "#F7931A" : "#F89E32").toColor();
  static Color Error = (isLight ? "#CD0000" : "#FF6666").toColor();
}
