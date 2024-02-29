import 'package:breadtalk/shop/screens/widgets/cartWidgets/cartItem.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/myGridView.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/sizes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Center(
              child: Text(
                "My Cart",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 20),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(color: Colors.orange,height: 20,),
              Padding(
                padding: EdgeInsets.all(Sizes.defaultSpace),
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
