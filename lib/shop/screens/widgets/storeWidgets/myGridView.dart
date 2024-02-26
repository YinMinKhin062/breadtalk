import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 180,
    this.crossAxisCount = 2,
    this.crossAxisSpacing = 24,
    this.mainAxisSpacing = 24,
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
      physics: NeverScrollableScrollPhysics(),
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
