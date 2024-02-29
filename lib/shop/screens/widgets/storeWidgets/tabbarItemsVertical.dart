import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../circularWidgets/roundedImg.dart';

class TabBarItemVertical extends StatelessWidget {
 const TabBarItemVertical(
      {super.key,
      required this.image,
      required this.text,
      this.width = 18,
      this.height = 18});

  final double width;
  final double height;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedImage(width: width, height: height, image: image),
          SizedBox(
            height: Sizes.md,
          ),
          Text(
            text.toUpperCase(),
          ),
        ],
      );
  }
}