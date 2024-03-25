import 'package:flutter/material.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/textContents.dart';
import '../../../../shop/screens/widgets/circularWidgets/roundedImg.dart';

class MyOrderListTile extends StatelessWidget {
  const MyOrderListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RoundedImage(
          image: ImageContents.productImg,
          width: 70,
          height: 70,
        ),
        SizedBox(
          width: Sizes.spaceBetween,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TxtContexts.productTitle,
              style: Theme.of(context).textTheme.titleMedium,
              softWrap: true,
            ),
            SizedBox(
              height: Sizes.spaceBetween / 2,
            ),
            Text(
              "3 items",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}
