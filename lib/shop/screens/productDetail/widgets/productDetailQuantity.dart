import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';
import '../../widgets/circularWidgets/roundedContainer.dart';

class ProductDetailQuantity extends StatelessWidget {
  const ProductDetailQuantity({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      bgColor: Colors.orange,
      borderRadius: BorderRadius.circular(40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 18,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                )),
          ),
          SizedBox(
            width: Sizes.md,
          ),
          const Text(
            "1",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: Sizes.md,
          ),
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.transparent,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 18,
                )),
          ),
        ],
      ),
    );
  }
}
