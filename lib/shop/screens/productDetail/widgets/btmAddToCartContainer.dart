import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/sizes.dart';

class BtmAddToCart extends StatelessWidget {
  const BtmAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace, vertical: Sizes.spaceBetween),
      decoration: BoxDecoration(
          // color: Colors.blueGrey.withOpacity(.7),
          // borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
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
          //checkout btn
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: Colors.orange),
                  onPressed: () {},
                  child: Text(
                    TxtContexts.addToCartTxt,
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
