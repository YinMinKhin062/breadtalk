import 'package:breadtalk/shop/screens/productDetail/widgets/MyRadioListTile.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/MyRawChip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Size",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w500)),
        SizedBox(
          height: Sizes.md,
        ),
        Wrap(
          spacing: 8,
          children: const [
            MyRawChip(
              label: "Slice",
              isSelected: true,
            ),
            MyRawChip(
              label: "Regular",
              isSelected: false,
            ),
            MyRawChip(
              label: "Classic",
              isSelected: false,
            ),
          ],
        ),
      ],
    );
  }
}
