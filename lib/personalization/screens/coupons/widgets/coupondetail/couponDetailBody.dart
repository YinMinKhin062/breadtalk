import 'package:breadtalk/personalization/screens/coupons/widgets/coupondetail/bulletTxt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../constants/sizes.dart';

class CouponDetailBody extends StatelessWidget {
  const CouponDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Get 25% off voucher for every purchase",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: Sizes.spaceBetween,
        ),
        const BulletTxt(txt: "Can redeem at all BreadTalk shops in Yangon"),
        const BulletTxt(
            txt: "This coupon is not valid with any other promotions"),
        const BulletTxt(txt: "cannot exchage with cash"),
      ],
    );
  }
}
