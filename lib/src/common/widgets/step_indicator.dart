import 'package:flutter/material.dart';

class StepIndicator extends StatefulWidget {
  const StepIndicator({
    super.key,
    required this.count,
    this.indicatorRadius = 30,
    required this.currentStep,
    this.indicatorColor = Colors.white10,
    this.activeIndicatorColor = Colors.white,
    this.lineWidth = 30,
    this.lineHeight = 2,
    this.lineRadius = 1,
    this.lineColor = Colors.grey,
    this.activeLineColor = Colors.blue,
    this.activeIndicatorBorderColor = Colors.blue,
    this.indicatorBorderColor = Colors.grey,
    this.indicatorBorderWidth = 1,
    this.numberStyle = const TextStyle(color: Colors.grey),
    this.activeNumberStyle = const TextStyle(color: Colors.blue),
    this.lineSpacing = 1,
    this.stepTitles = const [],
    this.stepTitleStyle = const TextStyle(color: Colors.black),
    this.enableStepTitle = false,
  });

  final int count;
  final double indicatorRadius;
  final int currentStep;
  final Color indicatorColor;
  final Color activeIndicatorColor;
  final double lineWidth;
  final double lineHeight;
  final double lineRadius;
  final Color lineColor;
  final Color activeLineColor;
  final Color activeIndicatorBorderColor;
  final Color indicatorBorderColor;
  final double indicatorBorderWidth;
  final TextStyle numberStyle;
  final TextStyle activeNumberStyle;
  final double lineSpacing;
  final List<String> stepTitles;
  final bool enableStepTitle;
  final TextStyle stepTitleStyle;

  @override
  _StepIndicatorState createState() => _StepIndicatorState();
}

class _StepIndicatorState extends State<StepIndicator> {
  Widget lineWidget(BuildContext context, int stepIndex) {
    return Container(
      width: widget.lineWidth,
      height: widget.lineHeight,
      decoration: BoxDecoration(
        color: widget.currentStep >= stepIndex
            ? widget.activeLineColor
            : widget.lineColor,
        borderRadius: stepIndex == 0
            ? BorderRadius.only(
                topLeft: Radius.circular(
                  widget.lineRadius,
                ),
                bottomLeft: Radius.circular(
                  widget.lineRadius,
                ),
              )
            : stepIndex == widget.count - 1
                ? BorderRadius.only(
                    topRight: Radius.circular(
                      widget.lineRadius,
                    ),
                    bottomRight: Radius.circular(
                      widget.lineRadius,
                    ),
                  )
                : BorderRadius.zero,
      ),
    );
  }

  Widget stepWidget(BuildContext context, int stepIndex) {
    return Container(
      width: widget.indicatorRadius,
      height: widget.indicatorRadius,
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.currentStep >= stepIndex
              ? widget.activeIndicatorBorderColor
              : widget.indicatorBorderColor,
          width: widget.indicatorBorderWidth,
        ),
        color: widget.currentStep >= stepIndex
            ? widget.activeIndicatorColor
            : widget.indicatorColor,
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      child: Center(
        child: Text(
          stepIndex.toString(),
          style: widget.currentStep >= stepIndex
              ? widget.activeNumberStyle
              : widget.numberStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int stepCount = widget.count;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 1; i <= stepCount; i++)
            Row(
              children: [
                SizedBox(
                  width: i > 0 ? widget.lineSpacing : 0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        (i != 1)
                            ? lineWidget(context, i)
                            : SizedBox(
                                width: widget.lineWidth,
                              ),
                        stepWidget(context, i),
                        (i != stepCount)
                            ? lineWidget(context, i)
                            : SizedBox(
                                width: widget.lineWidth,
                              ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    widget.enableStepTitle
                        ? Text(
                            widget.stepTitles[i - 1],
                            textAlign: TextAlign.center,
                            style: widget.stepTitleStyle,
                          )
                        : Container(),
                  ],
                ),
              ],
            )
        ],
      ),
    );
  }
}
