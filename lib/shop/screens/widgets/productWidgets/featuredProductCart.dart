import 'package:breadtalk/shop/screens/widgets/productWidgets/discountIcon.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';
import '../IconWidgets/wishlistIcon.dart';
import '../circularWidgets/roundedContainer.dart';
import '../circularWidgets/roundedImg.dart';

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      borderRadius: BorderRadius.circular(16),
      height: 190,
      child: Padding(
        padding: EdgeInsets.all(Sizes.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                const RoundedImage(
                  image: ImageContents.productImg,
                  fit: BoxFit.cover,
                  width: 135, //135
                  height: 125, //125
                ),

                //discount badge
                const Positioned(left: 5, top: 5, child: DiscountBadge()),

                //wishlist
                Positioned(
                    right: 5,
                    top: 5,
                    child: WishlistIcon(
                      onTap: () {},
                    )),
              ],
            ),

            SizedBox(
              height: Sizes.spaceBetween / 2,
            ),

            //product title
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

            //product price
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
            SizedBox(
              height: Sizes.spaceBetween / 2,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(right: 8),
            //   child: ElevatedButton.icon(
            //       style: ElevatedButton.styleFrom(
            //         padding:
            //             const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            //         backgroundColor: Colors.orange,
            //         // shape: RoundedRectangleBorder(
            //         //     borderRadius: BorderRadius.circular(12),
            //         //     )
            //       ),
            //       onPressed: () {},
            //       icon: Icon(
            //         Iconsax.shopping_cart,
            //         size: Sizes.spaceBetween,
            //         color: Colors.white,
            //       ),
            //       label: Text("Add to Cart",
            //           style: Theme.of(context)
            //               .textTheme
            //               .labelSmall!
            //               .copyWith(color: Colors.white, fontSize: 10))),
            // ),
          ],
        ),
      ),
    );
  }
}
