import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/shopWidgets/shopTabBar.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/tabBarItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )
              ),
            ),
            // ClipPath(
            //   clipper: OvalBottomBorderClipper(),
            //   child: Container(
            //     color: Colors.orange,
            //     height: 150,
            //   ),
            // ),
            // Positioned(
            //   right: 0,
            //   bottom: 10,
            //   child: ClipPath(
            //     clipper: ParallelogramClipper(),
            //     child: SizedBox(
            //       height: 100,
            //       child: CachedNetworkImage(imageUrl: ImageContents.shopImg)),
            //   ),
            // )
          ],
        ),
        SizedBox(height: Sizes.defaultSpace),
        Expanded(child: ShopTabBar())
      ],
    );
  }
}
