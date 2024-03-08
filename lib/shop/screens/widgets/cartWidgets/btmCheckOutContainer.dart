import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';

class BtmCheckoutContainer extends StatelessWidget {
  const BtmCheckoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace, vertical: Sizes.spaceBetween),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(.5),
            offset: const Offset(5, 5),
            blurRadius: 10,
            spreadRadius: 2),
        const BoxShadow(
            color: Colors.white,
            offset: Offset(0, 0),
            blurRadius: 0,
            spreadRadius: 0),
      ]),
      child: Column(
        children: [
          //total text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "10,000 MMK",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Sizes.md + 2,
          ),
          //checkout btn
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text(
                    "Checkout",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
