import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../constants/sizes.dart';

class CouponDetailFooter extends StatelessWidget {
  const CouponDetailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> config = Map();
    List<LineText> list = [];
    // return RoundedContainer(
    //   borderRadius: BorderRadius.circular(50),
    //   margin: EdgeInsets.symmetric(
    //       vertical: Sizes.spaceBetween, horizontal: Sizes.spaceBetweenSections),
    //   padding: EdgeInsets.symmetric(
    //       vertical: Sizes.sm, horizontal: Sizes.spaceBetween),
    //   bgColor: Colors.orange,
    //   child: Row(
    //     children: [
    //       const Text(
    //         "CODE",
    //         style: TextStyle(color: Colors.white),
    //       ),
    //       SizedBox(
    //         width: Sizes.spaceBetween,
    //       ),
    //       Container(
    //         color: Colors.white,
    //         height: 28,
    //         width: 2,
    //       ),
    //       SizedBox(
    //         width: Sizes.spaceBetween,
    //       ),
    //       const Text(
    //         "GOODBYEMAY",
    //         style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
    //       ),
    //       SizedBox(
    //         width: Sizes.spaceBetween,
    //       ),
    //       GestureDetector(
    //         onTap: () {
    //           Clipboard.setData(const ClipboardData(text: "GOODBYEMAY"));
    //           ScaffoldMessenger.of(context).showSnackBar(
    //               SnackBar(content: Text("Coupon code is copied")));
    //         },
    //         child: Icon(
    //           Iconsax.copy,
    //           size: 18,
    //           color: Colors.white,
    //         ),
    //       )
    //     ],
    //   ),
    // );
    return Padding(
      padding: EdgeInsets.only(
          top: Sizes.defaultSpace / 2,
          bottom: Sizes.defaultSpace,
          left: Sizes.defaultSpace,
          right: Sizes.defaultSpace),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {},
              child: const Text(
                "Use Now",
                style: TextStyle(color: Colors.white),
              ))),
    );
  }
}
