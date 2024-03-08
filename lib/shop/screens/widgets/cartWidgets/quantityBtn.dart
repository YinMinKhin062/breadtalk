import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';

class QuantityBtn extends StatelessWidget {
  const QuantityBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //add btn
        RoundedContainer(
          borderRadius: BorderRadius.circular(5),
          padding: const EdgeInsets.all(3),
          width: 50,
          height: 50,
          bgColor: Colors.blueGrey.withOpacity(.8),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 14,
          ),
        ),
        SizedBox(
          height: Sizes.sm,
        ),
        Text(
          "1",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: Colors.blueGrey.withOpacity(.7)),
        ),
        SizedBox(
          height: Sizes.sm,
        ),
        //remove btn
        RoundedContainer(
          borderRadius: BorderRadius.circular(5),
          padding: const EdgeInsets.all(3),
          width: 50,
          height: 50,
          bgColor: Colors.blueGrey.withOpacity(.8),
          child: const Icon(
            Icons.remove,
            color: Colors.white,
            size: 14,
          ),
        ),
      ],
    );
  }
}
