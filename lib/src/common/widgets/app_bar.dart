import 'package:flutter/material.dart';
import 'package:xwallet/generated/assets.dart';

class XAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leftWidget;
  final Widget? rightWidget;
  final Widget? centerWidget;
  final double? actionWidth;
  final double? actionSpacer;
  final double? appBarHeight;
  final double? borderHeight;
  final Color? borderColor;
  final Color? systemBarBackgroundColor;
  final Color? appBarBackgroundColor;
  final EdgeInsetsGeometry? appBarPadding;
  final Decoration? decoration;

  const XAppBar({
    super.key,
    this.appBarHeight = 40.0,
    this.borderHeight = 1.0,
    this.actionWidth = 24.0,
    this.actionSpacer = 8.0,
    this.borderColor = Colors.transparent,
    this.systemBarBackgroundColor = Colors.transparent,
    this.appBarBackgroundColor = Colors.transparent,
    this.appBarPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.leftWidget,
    this.rightWidget,
    this.centerWidget,
    this.decoration,
  });

  @override
  Size get preferredSize => const Size.fromHeight(200);

  List<Widget> renderChildren(BuildContext context) {
    late List<Widget> result = [];
    result.add(InkWell(
      child: const ImageIcon(
        AssetImage(Assets.imagesIcNavBack),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    ));
    result.add(const Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
    ));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final double topHeight = MediaQuery.of(context).padding.top;
    final double allHeight = topHeight + appBarHeight! + borderHeight!;
    final boxConstraints = BoxConstraints(
        maxWidth: 2 * actionWidth! + actionSpacer!, minWidth: actionWidth!);
    return Container(
      height: allHeight,
      decoration: decoration ??
          BoxDecoration(
            border: Border(
              bottom: BorderSide(width: borderHeight!, color: borderColor!),
            ),
          ),
      child: Column(
        children: [
          Container(
            height: topHeight,
            color: systemBarBackgroundColor,
          ),
          Container(
            height: appBarHeight!,
            color: appBarBackgroundColor,
            padding: appBarPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: boxConstraints,
                  alignment: Alignment.centerLeft,
                  child: leftWidget ??
                      InkWell(
                        child: Image.asset(
                          Assets.imagesIcNavBack,
                          width: actionWidth,
                          height: actionWidth,
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: actionSpacer!),
                    child: Container(
                      alignment: Alignment.center,
                      child: centerWidget,
                    ),
                  ),
                ),
                Container(
                  constraints: boxConstraints,
                  alignment: Alignment.centerRight,
                  child: rightWidget,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
