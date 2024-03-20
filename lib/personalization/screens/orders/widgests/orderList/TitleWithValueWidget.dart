import 'package:flutter/material.dart';

class TitlewithValue extends StatelessWidget {
  const TitlewithValue(
      {super.key, required this.title, required this.value, this.valueOfColor});
  final String title;
  final String value;
  final Color? valueOfColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 13),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: valueOfColor, fontWeight: FontWeight.w400, fontSize: 13),
        ),

        // Text(
        //   value,
        //   style: Theme.of(context)
        //       .textTheme
        //       .labelLarge!
        //       .copyWith(color: valueOfColor),
        // )
      ],
    );
  }
}
