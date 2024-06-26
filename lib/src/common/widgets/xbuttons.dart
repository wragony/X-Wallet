import 'package:flutter/material.dart';

class XTextButton extends StatelessWidget {
  const XTextButton(
      {this.child,
      this.color,
      this.onPressed,
      this.borderRadius = 8,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      super.key});

  final Color? color;
  final Widget? child;
  final Function? onPressed;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius))),
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(padding),
      ),
      onPressed: onPressed as void Function()?,
      child: child!,
    );
  }
}

class XOutlinedButton extends StatelessWidget {
  const XOutlinedButton(
      {super.key,
      this.child,
      this.outlineColor,
      required this.onPressed,
      this.borderRadius = 8,
      this.borderWidth,
      this.padding = const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      this.borderStyle});

  final Widget? child;
  final Function? onPressed;
  final double borderRadius;
  final double? borderWidth;
  final BorderStyle? borderStyle;
  final Color? outlineColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: outlineColor ?? currentTheme.primaryColor,
        padding: padding,
        textStyle: TextStyle(color: currentTheme.primaryColor),
        side: BorderSide(
          color: outlineColor ?? currentTheme.primaryColor,
          width: borderWidth ?? 1.0,
          style: borderStyle ?? BorderStyle.solid,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed as void Function()?,
      child: child!,
    );
  }
}

class XElevatedButtonWithIcon extends StatelessWidget {
  const XElevatedButtonWithIcon(
      {required this.label,
      this.color,
      this.iconData,
      required this.onPressed,
      this.borderRadius = 8,
      this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      super.key});

  final Widget label;
  final Color? color;
  final IconData? iconData;
  final Function onPressed;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed as void Function()?,
      icon: Icon(iconData),
      label: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
