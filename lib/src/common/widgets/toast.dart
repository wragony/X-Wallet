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
      backgroundColor: backgroundColor ?? AppColors.Gray24,
      textColor: textColor ?? AppColors.White,
    );
  }

  static cancel() {
    Fluttertoast.cancel();
  }
}
