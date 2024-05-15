import 'package:flutter/material.dart';
import 'package:xwallet/src/common/resources/colors.dart';

import '../resources/styles.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Error,
      body: SafeArea(
        child: Center(
            key: key,
            child: Text("Unknow Page",
                style: FontStyles.LargeBold(color: AppColors.White))),
      ),
    );
  }
}
