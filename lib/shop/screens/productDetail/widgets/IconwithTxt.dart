import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class IconwithTxt extends StatelessWidget {
  const IconwithTxt(
      {super.key, required this.color, required this.icon, required this.txt});

  final Color color;
  final IconData icon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 19,
        ),
        SizedBox(
          width: Sizes.sm,
        ),
        Text(txt,style: Theme.of(context).textTheme.labelMedium,)
      ],
    );
  }
}
