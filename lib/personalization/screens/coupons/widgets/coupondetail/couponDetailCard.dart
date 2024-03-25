import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../shop/screens/widgets/circularWidgets/roundedContainer.dart';
import '../cuvedSideWithLine.dart';
import 'couponDetailBody.dart';
import 'couponDetailFooter.dart';
import 'couponDetailHeader.dart';

class CouponDetailCard extends StatelessWidget {
  const CouponDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      borderRadius: BorderRadius.circular(Sizes.md),
      bgColor: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CouponDetailHeader(),
                SizedBox(
                  height: Sizes.defaultSpace,
                ),
                const CouponDetailBody(),
              ],
            ),
          ),
          const CurvedSideWithLine(),
          const CouponDetailFooter(),
        ],
      ),
    );
  }
}
