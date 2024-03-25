import 'package:flutter/material.dart';

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
          //add
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
          //quantity
          const Text(
            "1",
            style: TextStyle(color: Colors.white),
          ),
          // CircleAvatar(
          //   radius: 15,
          //   backgroundColor: Colors.white,
          //   child: Text(
          //     "1",
          //     style: Theme.of(context).textTheme.labelLarge,
          //   ),
          // ),
          SizedBox(
            width: Sizes.md,
          ),
          //remove
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
