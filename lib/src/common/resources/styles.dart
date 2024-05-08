import 'package:flutter/material.dart';

import 'colors.dart';

class FontStyles {
  static TextStyle bold() {
    return const TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle regular() {
    return const TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle medium() {
    return const TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle H1({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Black,
      fontSize: 96,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle H2({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Black,
      fontSize: 60,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle H3({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Black,
      fontSize: 48,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle H4({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Black,
      fontSize: 34,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle H5({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Black,
      fontSize: 24,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle H6({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Black,
      fontSize: 20,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle Title1({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 18,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  static TextStyle Title2({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  static TextStyle SubTitle1({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 18,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle SubTitle2({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle SubTitle3({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 14,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle Content1({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray7,
      fontSize: 12,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  static TextStyle Button12({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 12,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  static TextStyle Button14({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 14,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }

  static TextStyle Button16({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontFamily: 'Inter',
      color: color ?? AppColors.Gray24,
      fontSize: 16,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
}
