import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:readmore/readmore.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/textContents.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //productTitle
        Text(
          TxtContexts.productTitle,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w500),
        ),

        SizedBox(
          height: Sizes.spaceBetween / 2,
        ),

        //product price
        Text(
          TxtContexts.productPrice,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
        ),

        SizedBox(
          height: Sizes.spaceBetween / 2,
        ),

        //product detail txt
        const ReadMoreText(
          TxtContexts.productDetail + TxtContexts.readMoreTxt,
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: "Read More",
          trimExpandedText: "Less",
          moreStyle:
              TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400),
          lessStyle:
              TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
