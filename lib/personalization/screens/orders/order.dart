import 'package:breadtalk/personalization/screens/orders/widgests/orderStatusCard.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';
import 'widgests/orderList/orderCard.dart';
import 'widgests/orderListTile.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Iconsax.arrow_left),
        ),
        title: Text(
          "My Orders",
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Sizes.md,
          ),
          //list title
          const SizedBox(
              height: 45,
              child: OrderStatusTxt(
                  titleList: ['All', 'Processing', 'Shipping', 'Completed'])),
          SizedBox(
            height: Sizes.spaceBetween,
          ),
          const OrderCard(),
          const OrderCard()
        ],
      ),
    );
  }
}
