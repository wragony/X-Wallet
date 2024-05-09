import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';

import '../resources/colors.dart';

class XToast {
  static show({
    required String msg,
    Toast? toastLength,
    ToastGravity? gravity,
    Color? backgroundColor,
    Color? textColor,
  }) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: msg,
      toastLength: toastLength,
      gravity: gravity ?? ToastGravity.CENTER,
      backgroundColor: backgroundColor ?? AppColors.Otline,
      textColor: textColor ?? AppColors.Secondary,
    );
  }

  static cancel() {
    Fluttertoast.cancel();
  }
}
