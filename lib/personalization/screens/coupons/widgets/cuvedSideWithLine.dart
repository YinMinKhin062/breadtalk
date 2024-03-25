import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class CurvedSideWithLine extends StatelessWidget {
  const CurvedSideWithLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //curved left
        const SizedBox(
          height: 20,
          width: 10,
          child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)))),
        ),

        Expanded(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: EdgeInsets.all(Sizes.sm),
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  (constraints.constrainWidth() / 10).floor(),
                  (index) => const SizedBox(
                        width: 5,
                        height: 1,
                        child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.grey)),
                      )),
            ),
          );
        })),

        //curved right
        const SizedBox(
          height: 20,
          width: 10,
          child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)))),
        ),
      ],
    );
  }
}
