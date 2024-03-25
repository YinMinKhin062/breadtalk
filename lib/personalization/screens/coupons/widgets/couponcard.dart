import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/personalization/screens/coupons/coupondetails.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import 'cuvedSideWithLine.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Get.to(() => const CouponDetails()),
          child: RoundedContainer(
            borderRadius: BorderRadius.circular(Sizes.md),
            bgColor: Colors.white,
            child: Column(
              children: [
                //Img with discount coupon
                Padding(
                  padding: EdgeInsets.only(
                    top: Sizes.spaceBetween,
                    left: Sizes.spaceBetween,
                    right: Sizes.spaceBetween,
                    bottom: Sizes.spaceBetween / 2 - 2,
                  ),
                  child: Row(
                    children: [
                      const RoundedImage(
                        image: ImageContents.couponIcon,
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: Sizes.defaultSpace,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25% Off",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontSize: 18),
                          ),
                          SizedBox(
                            height: Sizes.sm,
                          ),
                          SizedBox(
                            width: 205,
                            child: Text(
                              "Available of minimun purchase amount of 10,000 MMK",
                              maxLines: 4,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // curved coupon box
                const CurvedSideWithLine(),

                // validity period
                Padding(
                  padding: EdgeInsets.only(
                    left: Sizes.spaceBetween,
                    right: Sizes.spaceBetween,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Validity Period: ${TxtContexts.postDateTxt} 10:12 am",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: Colors.blueGrey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
