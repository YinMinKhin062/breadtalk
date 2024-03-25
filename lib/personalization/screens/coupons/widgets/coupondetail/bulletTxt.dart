import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';

class BulletTxt extends StatelessWidget {
  const BulletTxt({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "\u2022",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
        ),
        SizedBox(
          width: Sizes.spaceBetween,
        ),
        Expanded(child: Text(txt))
      ],
    );
  }
}
