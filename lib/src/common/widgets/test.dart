import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../base/base_view.dart';
import '../base/base_vm.dart';
import '../resources/colors.dart';
import '../resources/styles.dart';
import 'buttons.dart';
import 'checkbox.dart';
import 'switch.dart';
import 'toast.dart';

class TestVM extends BaseViewModel {
  @override
  void onInit(BuildContext? context) {
    super.onInit(context);
  }

  @override
  void onDispose() {
    super.onDispose();
  }
}

class TestView extends BaseView<TestVM> {
  const TestView({super.key});

  @override
  Widget builder(BuildContext context, TestVM model, Widget? child) {
    // var l10n = context.l10n;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Text(
            "Wallet Setup",
            maxLines: 1,
            style: FontStyles.Heading(),
          ),
          PrimaryButton(
            text: "Entered",
            icon: Assets.imagesIcArrowSquareUpRight,
            onPressed: () {
              XToast.show(msg: 'msg');
            },
          ),
          const SizedBox(height: 16),
          SecondaryButton(
            text: "Entered",
            icon: Assets.imagesIcArrowSquareUpRight,
            onPressed: () {
              XToast.show(msg: 'msg');
            },
          ),
          const SizedBox(height: 16),
          PrimaryOutlineButton(
            text: "Entered",
            icon: Assets.imagesIcArrowSquareUpRight,
            onPressed: () {
              XToast.show(msg: 'msg');
            },
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 90,
            child: PrimarySmallButton(
              text: "Entered",
              onPressed: () {
                XToast.show(msg: 'msg');
              },
            ),
          ),
          const SizedBox(height: 16),
          Radio(
            activeColor: AppColors.Primary,
            hoverColor: AppColors.Primary,
            fillColor: MaterialStateProperty.resolveWith(
              (states) => AppColors.Primary,
            ),
            value: true,
            groupValue: true,
            onChanged: (val) {},
          ),
          const SizedBox(height: 16),
          const CustomCheckbox(
            text: "CustomCheckbox",
            paddingBottom: 4,
          ),
          const SizedBox(height: 16),
          const CustomCheckbox(
            checkedIcon: Assets.imagesIcRadioCheckedLight,
            uncheckedIcon: Assets.imagesIcRadioUncheckedLight,
            text: "CustomCheckbox",
          ),
          const SizedBox(height: 16),
          ToggleSwitch(
            width: 51.0,
            height: 31.0,
            value: false,
            padding: 2.0,
            activeColor: AppColors.Primary,
            inactiveColor: AppColors.Otline,
            toggleColor: AppColors.Surface,
            borderRadius: 30.0,
            onToggle: (val) {},
          ),
        ],
      ),
    );
  }

  @override
  TestVM viewModelFactory() {
    return TestVM();
  }
}
