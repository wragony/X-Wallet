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

  static Color Primary1 = (isLight ? "#FEFEE5" : "#FEFEE5").toColor();
  static Color Primary2 = (isLight ? "#FDFECC" : "#FDFECC3").toColor();
  static Color Primary3 = (isLight ? "#FBFDB3" : "#FBFDB3").toColor();
  static Color Primary4 = (isLight ? "#F8FB9F" : "#F8FB9F").toColor();
  static Color Primary5 = (isLight ? "#F5FA80" : "#F5FA80").toColor();
  static Color Primary6 = (isLight ? "#D1D75D" : "#D1D75D").toColor();
  static Color Primary7 = (isLight ? "#AEB340" : "#AEB340").toColor();
  static Color Primary8 = (isLight ? "#8B9028" : "#8B9028").toColor();
  static Color Secondary1 = (isLight ? "#FAFDFC" : "#FAFDFC").toColor();
  static Color Secondary2 = (isLight ? "#F6FCFA" : "#F6FCFA").toColor();
  static Color Secondary3 = (isLight ? "#EEF6F4" : "#EEF6F4").toColor();
  static Color Secondary4 = (isLight ? "#E4EEED" : "#E4EEED").toColor();
  static Color Secondary5 = (isLight ? "#D7E4E3" : "#D7E4E3").toColor();
  static Color Secondary6 = (isLight ? "#9DC3C4" : "#9DC3C4").toColor();
  static Color Secondary7 = (isLight ? "#6C9EA4" : "#6C9EA4").toColor();
  static Color Secondary8 = (isLight ? "#447784" : "#447784").toColor();

  static Color White = (isLight ? "#FFFFFF" : "#FFFFFF").toColor();
  static Color Black = (isLight ? "#000000" : "#000000").toColor();
  static Color Gray0 = (isLight ? "#F8F8F9" : "#F8F8F9").toColor();
  static Color Gray1 = (isLight ? "#F4F4F6" : "#F4F4F6").toColor();
  static Color Gray2 = (isLight ? "#E8E9ED" : "#E8E9ED").toColor();
  static Color Gray3 = (isLight ? "#DDDFE4" : "#DDDFE4").toColor();
  static Color Gray4 = (isLight ? "#D1D4DB" : "#D1D4DB").toColor();
  static Color Gray5 = (isLight ? "#C6C8D2" : "#C6C8D2").toColor();
  static Color Gray6 = (isLight ? "#BABEC9" : "#BABEC9").toColor();
  static Color Gray7 = (isLight ? "#AFB4C0" : "#AFB4C0").toColor();
  static Color Gray8 = (isLight ? "#A4A9B7" : "#A4A9B7").toColor();
  static Color Gray12 = (isLight ? "#767E93" : "#767E93").toColor();
  static Color Gray24 = (isLight ? "#090A0B" : "#090A0B").toColor();

  static Color Blue1 = (isLight ? "#C7F9F4" : "#C7F9F4").toColor();
  static Color Blue2 = (isLight ? "#BAD1FA" : "#BAD1FA").toColor();
  static Color Blue3 = (isLight ? "#58D5DB" : "#58D5DB").toColor();
  static Color Blue4 = (isLight ? "#2FA7B8" : "#2FA7B8").toColor();
  static Color Blue5 = (isLight ? "#016E89" : "#016E89").toColor();
  static Color Blue6 = (isLight ? "#005575" : "#005575").toColor();
  static Color Blue7 = (isLight ? "#004062" : "#004062").toColor();
  static Color Blue8 = (isLight ? "#002E4F" : "#002E4F").toColor();

  static Color Green1 = (isLight ? "#CDF9D0" : "#CDF9D0").toColor();
  static Color Green2 = (isLight ? "#9DF3AB" : "#9DF3AB").toColor();
  static Color Green3 = (isLight ? "#67DC86" : "#67DC86").toColor();
  static Color Green4 = (isLight ? "#3EBA6B" : "#3EBA6B").toColor();
  static Color Green5 = (isLight ? "#108C4A" : "#108C4A").toColor();
  static Color Green6 = (isLight ? "#0B7849" : "#0B7849").toColor();
  static Color Green7 = (isLight ? "#086445" : "#086445").toColor();
  static Color Green8 = (isLight ? "#05513F" : "#05513F").toColor();

  static Color Yellow1 = (isLight ? "#FEF0CB" : "#FEF0CB").toColor();
  static Color Yellow2 = (isLight ? "#FDDE99" : "#FDDE99").toColor();
  static Color Yellow3 = (isLight ? "#FBC565" : "#FBC565").toColor();
  static Color Yellow4 = (isLight ? "#F7AC3F" : "#F7AC3F").toColor();
  static Color Yellow5 = (isLight ? "#F28602" : "#F28602").toColor();
  static Color Yellow6 = (isLight ? "#D06901" : "#D06901").toColor();
  static Color Yellow7 = (isLight ? "#AE5001" : "#AE5001").toColor();
  static Color Yellow8 = (isLight ? "#8C3A00" : "#8C3A00").toColor();

  static Color Red1 = (isLight ? "#FFE5DA" : "#FFE5DA").toColor();
  static Color Red2 = (isLight ? "#FFC4B6" : "#FFC4B6").toColor();
  static Color Red3 = (isLight ? "#FF9D91" : "#FF9D91").toColor();
  static Color Red4 = (isLight ? "#FF7976" : "#FF7976").toColor();
  static Color Red5 = (isLight ? "#FF4956" : "#FF4956").toColor();
  static Color Red6 = (isLight ? "#DB3550" : "#DB3550").toColor();
  static Color Red7 = (isLight ? "#B72449" : "#B72449").toColor();
  static Color Red8 = (isLight ? "#931741" : "#931741").toColor();
}
