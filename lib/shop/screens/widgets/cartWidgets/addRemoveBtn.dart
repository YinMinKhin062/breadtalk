import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class AddRemoveBtn extends StatelessWidget {
  const AddRemoveBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //add
        CircleAvatar(
          radius: 14,
          backgroundColor: Colors.orange,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 12,
            ),
          ),
        ),
        SizedBox(
          width: Sizes.md,
        ),
        const Text("1"),
        SizedBox(
          width: Sizes.md,
        ),
        CircleAvatar(
          radius: 14,
          backgroundColor: Colors.orange,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 12,
            ),
          ),
        ),
      ],
    );
  }
}
