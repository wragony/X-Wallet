import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../../common/base/base_view.dart';
import '../../../common/resources/styles.dart';
import '../../../common/widgets/app_bar.dart';
import '../vm/settings_vm.dart';

class SettingsView extends BaseView<SettingsVM> {
  const SettingsView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return XAppBar(
      centerWidget: Text(
        "Settings",
        overflow: TextOverflow.ellipsis,
        style: FontStyles.LargeBold(),
      ),
      rightWidget: InkWell(
        child: Image.asset(
          Assets.imagesIcNavSearch,
          width: 24,
          height: 24,
        ),
      ),
    );
  }

  @override
  Widget builder(BuildContext context, SettingsVM model, Widget? child) {
    return const Column();
  }

  @override
  SettingsVM viewModelFactory() {
    return SettingsVM();
  }
}
