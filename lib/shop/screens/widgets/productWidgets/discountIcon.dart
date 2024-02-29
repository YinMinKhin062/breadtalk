import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';

class DiscountBadge extends StatelessWidget {
  const DiscountBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 22,
          width: 30,
          decoration: BoxDecoration(
            color: Colors.orange,
           borderRadius: BorderRadius.circular(30)
          ),
          // child: Text("HOT",style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white,fontSize: Sizes.md),textAlign: TextAlign.start,),
        ),
        Positioned(
            top: 5,
            left: 4,
            // right: 5,
            // bottom: 10,
            child: Text(
              "-25%",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: Sizes.md,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
