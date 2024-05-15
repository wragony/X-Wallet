import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../resources/colors.dart';
import '../resources/styles.dart';

export 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatefulWidget {
  const PinCode({
    super.key,
    this.focusNode,
    this.errorController,
    this.textEditingController,
    this.onChanged,
    this.onCompleted,
    this.onSubmitted,
    this.onEditingComplete,
    this.beforeTextPaste,
    this.validator,
    this.onSaved,
  });

  final FocusNode? focusNode;
  final StreamController<ErrorAnimationType>? errorController;
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onEditingComplete;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final bool Function(String? text)? beforeTextPaste;

  @override
  State<StatefulWidget> createState() {
    return _PinCodeState();
  }
}

class _PinCodeState extends State<PinCode> {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      textStyle: FontStyles.LargeBold(),
      pastedTextStyle: FontStyles.LargeBold(),
      length: 6,
      autoFocus: true,
      focusNode: widget.focusNode,
      obscureText: false,
      obscuringCharacter: '*',
      blinkWhenObscuring: true,
      animationType: AnimationType.fade,
      validator: (v) => widget.validator!(v),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 48,
        fieldWidth: 48,
        activeFillColor: AppColors.Surface,
        inactiveFillColor: AppColors.Surface,
        selectedFillColor: AppColors.Surface,
        activeColor: AppColors.Primary,
        selectedColor: AppColors.Primary,
        inactiveColor: AppColors.Otline,
        borderWidth: 1.5,
        activeBorderWidth: 1.5,
        inactiveBorderWidth: 1.5,
        selectedBorderWidth: 1.5,
        disabledBorderWidth: 1.5,
        errorBorderWidth: 1.5,
      ),
      cursorColor: AppColors.Primary,
      animationDuration: const Duration(milliseconds: 200),
      enableActiveFill: false,
      errorAnimationController: widget.errorController,
      controller: widget.textEditingController,
      keyboardType: TextInputType.number,
      boxShadows: [
        BoxShadow(
          offset: const Offset(0, 1.2),
          color: AppColors.Otline,
          blurRadius: 10,
        )
      ],
      onCompleted: (v) => widget.onCompleted,
      onChanged: (value) => widget.onChanged,
      onSubmitted: (text) => widget.onSubmitted,
      onEditingComplete: () => widget.onEditingComplete,
      onSaved: (text) => widget.onSaved,
      beforeTextPaste: (text) => widget.beforeTextPaste!(text),
    );
  }
}
