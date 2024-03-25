import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/imageContents.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../shop/screens/widgets/circularWidgets/roundedImg.dart';

class CouponDetailHeader extends StatelessWidget {
  const CouponDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RoundedImage(
          image: ImageContents.couponIcon,
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: Sizes.defaultSpace,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "25% Off Voucher",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 18),
                // overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: Sizes.sm / 2,
              ),
              Text(
                "BreadTalk",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.blueGrey, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }
}
