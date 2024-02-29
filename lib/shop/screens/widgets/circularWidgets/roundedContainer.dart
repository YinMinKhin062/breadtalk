import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      this.child,
      this.width,
      this.height,
      this.borderRadius,
      this.bgColor,
      this.margin,
      this.showBoxShadow = false,
      this.showBorder = false,
      this.padding});

  final BorderRadiusGeometry? borderRadius;
  final Color? bgColor;
  final double? width;
  final double? height;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool showBoxShadow;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: borderRadius,
          border: showBorder ? Border.all(color: Colors.grey) : null,
          boxShadow: showBoxShadow
              ? [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      offset: const Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0),
                ]
              : []),
      child: child,
    );
  }
}
