import 'package:breadtalk/constants/imageContents.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/sizes.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Rating
        Row(
          children: [
            const Icon(
              Iconsax.star1,
              color: Colors.amber,
            ),
            SizedBox(
              width: Sizes.md,
            ),
            const Text("4.5")
          ],
        ),

        //Delivery in
        Row(
          children: [
            const Icon(
              Icons.alarm,
              color: Colors.blueGrey,
              size: 19,
            ),
            SizedBox(
              width: Sizes.sm,
            ),
            const Text("15 Min")
          ],
        ),

        //calories
        Row(
          children: [
            const Image(
              image: AssetImage(ImageContents.flame),
              width: 15,
              height: 15,
            ),
            SizedBox(
              width: Sizes.md,
            ),
            const Text("100 Kcal")
          ],
        ),
      ],
    );
  }
}
