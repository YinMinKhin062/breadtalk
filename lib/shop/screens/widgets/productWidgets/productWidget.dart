import 'package:breadtalk/shop/controllers/productHoverController.dart';
import 'package:breadtalk/shop/screens/widgets/IconWidgets/detailIcon.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';

import '../IconWidgets/wishlistIcon.dart';
import '../circularWidgets/roundedContainer.dart';
import '../circularWidgets/roundedImg.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final hoverController = Get.put(ProductHoverController());
    return RoundedContainer(
      height: 210,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children:  [
              //product thumnails
             const RoundedImage(
                image: ImageContents.productImg,
                fit: BoxFit.cover,
                width: 135,
                height: 125,
              ),

              //wishlist
              Positioned(right: 5, top: 5, child: WishlistIcon(onTap: () {
                
              },)),
            ],
          ),
          SizedBox(
            height: Sizes.spaceBetween / 2,
          ),
          SizedBox(
            width: 135,
            child: Text(
              "Cures Of The Golden Flower",
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: Sizes.sm / 2,
          ),
          SizedBox(
            width: 135,
            child: Text(
              "MMK 35000-45000",
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
