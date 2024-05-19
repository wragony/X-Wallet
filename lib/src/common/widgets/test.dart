import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xwallet/src/routes.dart';

import '../../../../generated/assets.dart';
import '../extension/string_ext.dart';
import '../resources/colors.dart';
import '../resources/styles.dart';
import '../utils/density.dart';
import '../utils/logger.dart';
import 'buttons.dart';
import 'checkbox.dart';
import 'input_form_field.dart';
import 'pincode.dart';
import 'step_indicator.dart';
import 'switch.dart';
import 'toast.dart';
import 'token_card.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TestViewState();
  }
}

class _TestViewState extends State<TestView> with WidgetsBindingObserver {
  bool toggleValue = false;
  String currentText = "";
  bool hasError = false;
  final GlobalKey<FormState> mFormKey = GlobalKey<FormState>();
  final GlobalKey mInputKey = GlobalKey();
  String suffixIcon = Assets.imagesIcEyeLight;
  bool isInputError = false;
  TextEditingController textEditingController = TextEditingController();
  late StreamController<ErrorAnimationType> errorController;

  final TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    XLogger.d('>>>initState');
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      XLogger.d('>>>addPostFrameCallback: A single frame drawback callback');
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    XLogger.d('>>>didChangeAppLifecycleState:$state');
  }

  @override
  void didUpdateWidget(covariant TestView oldWidget) {
    XLogger.d('>>>didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    XLogger.d('>>>didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    XLogger.d('>>>deactivate');
    super.deactivate();
  }

  @override
  void activate() {
    XLogger.d('>>>activate');
    super.activate();
  }

  @override
  void reassemble() {
    XLogger.d('>>>reassemble');
    super.reassemble();
  }

  @override
  void dispose() {
    XLogger.d('>>>dispose');
    errorController.close();
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.Primary,),
      backgroundColor: AppColors.Background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                    Navigator.pushNamed(context, AppRoutes.root);
                  },
                ),
                const SizedBox(height: 16),
                SecondaryButton(
                  text: "Entered",
                  icon: Assets.imagesIcArrowSquareUpRight,
                  onPressed: () {
                    Navigator.pushNamed(context, "/sss");
                  },
                ),
                const SizedBox(height: 16),
                PrimaryOutlineButton(
                  text: "Entered",
                  icon: Assets.imagesIcArrowSquareUpRight,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.settings);
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
                Form(
                  key: mFormKey,
                  child: Column(
                    children: [
                      InputFormField(
                        key: mInputKey,
                        height: 50,
                        textEditingController: inputController,
                        prefix: ImageIcon(
                          const AssetImage(Assets.imagesIcMailLight),
                          color: AppColors.Primary,
                        ),
                        labelText: "Email address",
                        hintText: "abc@email.com",
                        suffix: InkWell(
                          child: Image.asset(suffixIcon),
                          onTap: () {
                            if (isInputError) {
                              return;
                            }
                            setState(() {
                              suffixIcon = Assets.imagesIcEyeHideLight;
                            });
                          },
                        ),
                        borderType: BorderType.outlined,
                        borderColor: AppColors.Primary,
                        style: FontStyles.Medium(),
                        hintTextStyle:
                            FontStyles.Medium(color: AppColors.Otline),
                        labelTextStyle:
                            FontStyles.xSmall(color: AppColors.Secondary),
                        contentPadding: const EdgeInsets.only(
                          left: 14,
                          right: 14,
                          top: 2,
                          bottom: 12,
                        ),
                        onChanged: (String? v, bool isError) {
                          isInputError = isError;
                        },
                        validator: (String? v, bool isError) {
                          isInputError = isError;
                          if (isError) {
                            setState(() {
                              suffixIcon = Assets.imagesIcCloseLight;
                            });
                          }
                          if (v.isEmptyOrNull) {
                            return "Not empty";
                          }
                          if (inputController.text != "AAA") {
                            return "Input error";
                          }
                          return "";
                        },
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        enableDefaultValidation: true,
                        bottomMargin: 10,
                      ),
                      const SizedBox(height: 16),
                      PrimaryButton(
                        text: "Verification",
                        icon: Assets.imagesIcArrowSquareUpRight,
                        onPressed: () {
                          XLogger.d("verifyPin");
                          verifyPin();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const TokenCard1(),
                const SizedBox(height: 16),
                const TokenMarketCard1(),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                        width: (Density.instance.screenWidth - 3 * 16) / 2.0,
                        child: const TokenMarketCard2()),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                        width: (Density.instance.screenWidth - 3 * 16) / 2.0,
                        child: const TokenMarketCard2()),
                  ],
                ),
                const SizedBox(height: 16),
                const ListenerTest(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void verifyPin() {
    mFormKey.currentState!.validate();
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

class ListenerTest extends StatefulWidget {
  const ListenerTest({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListenerTestState();
  }
}

class _ListenerTestState extends State<ListenerTest> {
  double _left = 0;
  double _top = 0;

  @override
  Widget build(BuildContext context) {
    return Listener(
      child: GestureDetector(
        child: Container(
          height: 200,
          child: Stack(
            children: [
              Positioned(
                top: _top,
                left: _left,
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          XLogger.d('>>>GestureDetector:onTap');
        },
        onDoubleTap: () {
          XLogger.d('>>>GestureDetector:onDoubleTap');
        },
        onLongPress: () {
          XLogger.d('>>>GestureDetector:onLongPress');
        },
        onPanUpdate: (e) {
          XLogger.d('>>>GestureDetector:onPanUpdate');
          setState(() {
            // Update the location
            _left += e.delta.dx;
            _top += e.delta.dy;
          });
        },
      ),
      onPointerDown: (event) {
        XLogger.d('>>>Listener:onPointerDown');
      },
      onPointerMove: (event) {
        XLogger.d('>>>Listener:onPointerMove');
      },
      onPointerUp: (event) {
        XLogger.d('>>>Listener:onPointerUp');
      },
    );
  }
}
