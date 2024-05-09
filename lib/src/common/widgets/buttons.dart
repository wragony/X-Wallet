import 'package:flutter/material.dart';
import 'package:xwallet/src/common/extension/string_ext.dart';

import '../resources/colors.dart';
import '../resources/styles.dart';
import 'xbuttons.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.child,
    this.onPressed,
    this.padding,
    required this.text,
    this.icon,
    this.iconLeft = true,
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Function? onPressed;
  final String text;
  final String? icon;
  final bool iconLeft;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget = !icon.isEmptyOrNull
        ? ImageIcon(
            size: 24,
            AssetImage(icon!),
            color: AppColors.Surface,
          )
        : const SizedBox(width: 0);
    Widget textWidget = Text(
      text,
      style: FontStyles.MediumBold(color: AppColors.Surface),
    );
    Widget sizeBox = const SizedBox(width: 4);
    var childWidget = iconLeft
        ? [iconWidget, sizeBox, textWidget]
        : [textWidget, sizeBox, iconWidget];
    return XTextButton(
      key: key,
      color: AppColors.Primary,
      onPressed: onPressed,
      borderRadius: 12,
      padding: padding ?? const EdgeInsets.all(14),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: childWidget,
          ),
    );
  }
}

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.child,
    this.onPressed,
    this.padding,
    required this.text,
    this.icon,
    this.iconLeft = true,
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Function? onPressed;
  final String text;
  final String? icon;
  final bool iconLeft;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget = !icon.isEmptyOrNull
        ? ImageIcon(
            size: 24,
            AssetImage(icon!),
            color: AppColors.Secondary,
          )
        : const SizedBox(width: 0);
    Widget textWidget = Text(
      text,
      style: FontStyles.MediumBold(color: AppColors.Secondary),
    );
    Widget sizeBox = const SizedBox(width: 4);
    var childWidget = iconLeft
        ? [iconWidget, sizeBox, textWidget]
        : [textWidget, sizeBox, iconWidget];
    return XTextButton(
      key: key,
      color: AppColors.Otline,
      onPressed: onPressed,
      borderRadius: 12,
      padding: padding ?? const EdgeInsets.all(14),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: childWidget,
          ),
    );
  }
}

class PrimaryOutlineButton extends StatelessWidget {
  const PrimaryOutlineButton({
    super.key,
    this.child,
    this.onPressed,
    this.padding,
    required this.text,
    this.icon,
    this.iconLeft = true,
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Function? onPressed;
  final String text;
  final String? icon;
  final bool iconLeft;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget = !icon.isEmptyOrNull
        ? ImageIcon(
            size: 24,
            AssetImage(icon!),
            color: AppColors.Primary,
          )
        : const SizedBox(width: 0);
    Widget textWidget = Text(
      text,
      style: FontStyles.MediumBold(color: AppColors.Primary),
    );
    Widget sizeBox = const SizedBox(width: 4);
    var childWidget = iconLeft
        ? [iconWidget, sizeBox, textWidget]
        : [textWidget, sizeBox, iconWidget];
    return XOutlinedButton(
      key: key,
      outlineColor: AppColors.Primary,
      onPressed: onPressed,
      borderRadius: 12,
      borderWidth: 2,
      padding: padding ?? const EdgeInsets.all(14),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: childWidget,
          ),
    );
  }
}

class PrimarySmallButton extends StatelessWidget {
  const PrimarySmallButton({
    super.key,
    this.child,
    this.onPressed,
    this.padding,
    required this.text,
    this.icon,
    this.iconLeft = true,
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final Function? onPressed;
  final String text;
  final String? icon;
  final bool iconLeft;

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget = !icon.isEmptyOrNull
        ? ImageIcon(
            size: 24,
            AssetImage(icon!),
            color: AppColors.Surface,
          )
        : const SizedBox(width: 0);
    Widget textWidget = Text(
      text,
      style: FontStyles.Small(color: AppColors.Surface),
    );
    Widget sizeBox = const SizedBox(width: 4);
    var childWidget = iconLeft
        ? [iconWidget, sizeBox, textWidget]
        : [textWidget, sizeBox, iconWidget];
    return XTextButton(
      key: key,
      color: AppColors.Primary,
      onPressed: onPressed,
      borderRadius: 12,
      padding:
          padding ?? const EdgeInsets.symmetric(vertical: 6, horizontal: 7.5),
      child: child ??
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: childWidget,
          ),
    );
  }
}
