import 'package:breadtalk/personalization/screens/coupons/widgets/couponcard.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/myGridView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';
import '../../../shop/screens/widgets/customAppBar.dart';

class Coupons extends StatelessWidget {
  const Coupons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: CustomAppBar(
        statusbarIconcolor: Brightness.light,
        backArrowColor: Colors.white,
        padding: 0,
        preferredsize: const Size.fromHeight(kToolbarHeight),
        showBackArrow: true,
        icon: Iconsax.arrow_left,
        onPressed: () => Get.back(),
        title: Text("Coupons",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Sizes.defaultSpace, vertical: Sizes.spaceBetween / 2),
          child: Column(
            children: [
              MyGridView(
                itemCount: 3,
                crossAxisCount: 1,
                mainAxisExtent: 128,
                itemBuilder: (p0, p1) => const CouponCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
