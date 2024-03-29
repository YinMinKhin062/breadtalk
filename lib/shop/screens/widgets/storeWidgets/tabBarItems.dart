import 'package:flutter/material.dart';


class TabBarItems extends StatelessWidget {
  const TabBarItems(
      {super.key,
       this.image,
      required this.text,
      this.width = 18,
      this.height = 18});

  final double width;
  final double height;
  final String? image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // RoundedImage(width: width, height: height, image: image),
          // SizedBox(
          //   width: Sizes.md,
          // ),
          Text(
            text.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
