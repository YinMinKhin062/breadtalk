import 'package:flutter/material.dart';


class MyGridView extends StatelessWidget {
  const MyGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 245,
    this.crossAxisCount = 2,
    this.crossAxisSpacing = 16,
    this.mainAxisSpacing = 16,
  });

  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;
  final double mainAxisExtent;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: mainAxisExtent,
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing, //row spacing
        crossAxisSpacing: crossAxisSpacing,
        //column spacing
      ),
      itemBuilder: itemBuilder,
    );
  }
}
