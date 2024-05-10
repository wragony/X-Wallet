import 'package:flutter/material.dart';

import 'colors.dart';

class FontStyles {
  static TextStyle Heading({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle LargeBold({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Large({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle MediumBold({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle Regular({Color? color, double? fontSize}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: fontSize ?? 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle SmallBold({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Small({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle xSmallBold({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle xSmall({Color? color}) {
    return TextStyle(
      fontFamily: 'ReadexPro',
      color: color ?? AppColors.Text,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }
}
