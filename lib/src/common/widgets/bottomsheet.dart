import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../common/resources/colors.dart';

class DraggableBottomSheetWidget extends StatefulWidget {
  const DraggableBottomSheetWidget({super.key, this.contentWidget});

  final Widget? contentWidget;

  @override
  State<StatefulWidget> createState() {
    return _DraggableBottomSheetWidgetState();
  }
}

class _DraggableBottomSheetWidgetState
    extends State<DraggableBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1.0,
      builder: (BuildContext context, ScrollController scrollController) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  width: 48.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: AppColors.Gray4,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Expanded(
                  child: widget.contentWidget ?? const Spacer(flex: 1),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
