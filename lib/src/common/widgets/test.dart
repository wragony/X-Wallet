import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:xwallet/src/common/utils/logger.dart';

import '../../../../generated/assets.dart';
import '../resources/colors.dart';
import '../resources/styles.dart';
import 'buttons.dart';
import 'checkbox.dart';
import 'input_form_field.dart';
import 'pincode.dart';
import 'step_indicator.dart';
import 'switch.dart';
import 'toast.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TestViewState();
  }
}

class _TestViewState extends State<TestView> {
  bool toggleValue = false;
  String currentText = "";
  bool hasError = false;

  TextEditingController textEditingController = TextEditingController();
  late StreamController<ErrorAnimationType> errorController;

  final TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.White,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                  value: toggleValue,
                  padding: 2.0,
                  activeColor: AppColors.Primary,
                  inactiveColor: AppColors.Otline,
                  toggleColor: AppColors.Surface,
                  borderRadius: 30.0,
                  onToggle: (val) {
                    setState(() {
                      toggleValue = !toggleValue;
                    });
                  },
                ),
                const SizedBox(height: 16),
                StepIndicator(
                  currentStep: 1,
                  count: 4,
                  indicatorRadius: 24,
                  activeNumberStyle: FontStyles.Small(),
                  numberStyle: FontStyles.Small(color: AppColors.Otline),
                  activeIndicatorColor: AppColors.Surface,
                  activeLineColor: AppColors.Primary,
                  lineColor: AppColors.Otline,
                  indicatorColor: AppColors.Surface,
                  indicatorBorderColor: AppColors.Otline,
                  activeIndicatorBorderColor: AppColors.Primary,
                  enableStepTitle: true,
                  indicatorBorderWidth: 2,
                  lineSpacing: 0,
                  stepTitles: const ["Step 1", "Step 2", "Step 3", "Step 4"],
                  stepTitleStyle: FontStyles.Small(),
                ),
                const SizedBox(height: 16),
                PinCode(
                  textEditingController: textEditingController,
                  errorController: errorController,
                  validator: (v) {
                    if (v!.length < 3) {
                      return "I'm from validator";
                    } else {
                      return null;
                    }
                  },
                  onCompleted: (v) {
                    XLogger.d(">>>onCompleted");
                  },
                  onEditingComplete: () {
                    XLogger.d(">>>onEditingComplete");
                  },
                  onSubmitted: (v) {
                    XLogger.d(">>>onSubmitted");
                  },
                  onChanged: (value) {
                    XLogger.d(value);
                    setState(() {
                      currentText = value;
                    });
                  },
                  onSaved: (value) {
                    XLogger.d(value);
                  },
                  beforeTextPaste: (text) {
                    XLogger.d("Allowing to paste $text");
                    return true;
                  },
                ),
                PrimaryButton(
                  text: "Verification",
                  icon: Assets.imagesIcArrowSquareUpRight,
                  onPressed: () {
                    XLogger.d("verifyPin");
                    verifyPin();
                  },
                ),
                const SizedBox(height: 16),
                InputFormField(
                  height: 50,
                  textEditingController: inputController,
                  prefix: ImageIcon(
                    const AssetImage(Assets.imagesIcMailLight),
                    color: AppColors.Primary,
                  ),
                  labelText: "Email address",
                  hintText: "abc@email.com",
                  suffix: InkWell(
                    child: Image.asset(Assets.imagesIcCheckLight),
                    onTap: () {},
                  ),
                  borderType: BorderType.outlined,
                  borderColor: AppColors.Primary,
                  style: FontStyles.Medium(),
                  hintTextStyle: FontStyles.Medium(color: AppColors.Otline),
                  labelTextStyle: FontStyles.xSmall(color: AppColors.Secondary),
                  contentPadding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                    top: 2,
                    bottom: 12,
                  ),
                  bottomMargin: 10, // Optional
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void verifyPin() {
    if (currentText.length != 6 || currentText != "123456") {
      errorController.add(ErrorAnimationType.shake);
      setState(() => hasError = true);
    } else {
      setState(
        () {
          hasError = false;
          XToast.show(msg: "OTP Verified!!");
        },
      );
    }
  }
}
