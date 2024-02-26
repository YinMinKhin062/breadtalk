import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';
import '../IconWidgets/detailIcon.dart';
import '../IconWidgets/wishlistIcon.dart';
import '../circularWidgets/roundedContainer.dart';
import '../circularWidgets/roundedImg.dart';

class StackOnHoverWidget extends StatelessWidget {
  const StackOnHoverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      borderRadius: BorderRadius.circular(Sizes.lg),
      child: Stack(
        children: [
          const RoundedImage(
            image: ImageContents.productImg,
            width: 135,
            height: 125,
          ),
          Container(
            width: 135,
            height: 125,
            decoration: BoxDecoration(
                color: Colors.orange.withOpacity(.5),
                borderRadius: BorderRadius.circular(Sizes.lg)),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                WishlistIcon(),
                SizedBox(
                  height: 4,
                ),
                DetailIcon(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
