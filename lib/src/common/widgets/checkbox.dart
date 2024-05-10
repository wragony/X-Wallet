import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../resources/styles.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
    this.onChanged,
    this.text,
    this.textStyle,
    this.checkedIcon,
    this.uncheckedIcon,
    this.paddingBottom,
  });

  final String? text;
  final TextStyle? textStyle;
  final String? checkedIcon;
  final String? uncheckedIcon;
  final double? paddingBottom;

  final Function(bool?)? onChanged;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => isChecked = !isChecked);
        widget.onChanged?.call(isChecked);
      },
      child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isChecked
                ? Image.asset(
                    widget.checkedIcon ?? Assets.imagesIcCheckedRingLight,
                  )
                : Image.asset(
                    widget.uncheckedIcon ?? Assets.imagesIcUncheckedRingLight,
                  ),
            const SizedBox(width: 8),
            Padding(
              padding: EdgeInsets.only(bottom: widget.paddingBottom ?? 0.0),
              child: Text(
                widget.text ?? "",
                style: widget.textStyle ?? FontStyles.Small(),
              ),
            ),
          ]),
    );
  }
}
