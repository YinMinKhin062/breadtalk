import 'package:breadtalk/shop/screens/widgets/cartWidgets/cartItem.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/sizes.dart';
import 'widgets/cartWidgets/btmCheckOutContainer.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
              icon: const Icon(
                Iconsax.arrow_left,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          title: Text(
            "My Cart",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18),
          ),
        ),
        bottomNavigationBar: const BtmCheckoutContainer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(color: Colors.orange,height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Sizes.spaceBetweenSections,
                    horizontal: Sizes.spaceBetween),
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const CartItem(),
                    separatorBuilder: (context, index) => SizedBox(
                          height: Sizes.spaceBetween,
                        ),
                    itemCount: 4),
              ),
            ],
          ),
        ));
  }
}
