import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/personalization/screens/coupons/widgets/coupondetail/couponDetailBody.dart';
import 'package:breadtalk/personalization/screens/coupons/widgets/coupondetail/couponDetailFooter.dart';
import 'package:breadtalk/personalization/screens/coupons/widgets/coupondetail/couponDetailHeader.dart';
import 'package:breadtalk/personalization/screens/coupons/widgets/cuvedSideWithLine.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants/sizes.dart';
import 'widgets/coupondetail/closebtn.dart';
import 'widgets/coupondetail/couponDetailCard.dart';

class CouponDetails extends StatelessWidget {
  const CouponDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: const CustomAppBar(
        statusbarIconcolor: Brightness.light,
      ),
      body: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
             const CouponDetailCard(),
              SizedBox(
                height: Sizes.spaceBetweenSections * 1.8,
              ),
             const  CloseBtn()
            ],
          )),
    );
  }
}
