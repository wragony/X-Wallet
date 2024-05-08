import 'package:flutter/material.dart';

class Density {
  static Density? _instance;

  static Density get instance => _getInstance();

  factory Density() => _getInstance()!;

  static Density _getInstance() {
    _instance ??= Density._internal();
    return _instance!;
  }

  Density._internal();

  late MediaQueryData _mediaQuery;

  late double _screenCopies;

  late double _spCopies;

  void init(BuildContext context, double screenCopies, double? spCopies) {
    _mediaQuery = MediaQuery.of(context);
    _screenCopies =
        screenCopies != null && screenCopies > 0 ? screenCopies : screenWidth;
    _spCopies = spCopies != null && spCopies > 0 ? spCopies : screenWidth;
  }

  double dp(double screenCopies) {
    return (screenWidth * screenCopies) / _screenCopies;
  }

  double sp(double spCopies) {
    return (screenWidth * spCopies) / _spCopies;
  }

  double get screenWidth => _mediaQuery.size.width;

  double get screenHeight => _mediaQuery.size.height;

  double get statusBarHeight => _mediaQuery.padding.top;

  double get bottomBarHeight => _mediaQuery.padding.bottom;
}
