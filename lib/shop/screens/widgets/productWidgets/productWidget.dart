import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/shop/screens/productDetail/productDetail.dart';
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
import 'discountIcon.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: RoundedContainer(
        borderRadius: BorderRadius.circular(16),
        bgColor: Colors.white,
        showBoxShadow: true,
        child: Padding(
          padding: EdgeInsets.all(Sizes.sm),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    DiscountBadge(),
                    WishlistIcon(),
                  ],
                ),
              ),

              // Stack(
              //   children: const [
              //product thumnails
              const RoundedImage(
                image: ImageContents.productImg,
                fit: BoxFit.cover,
                width: 100, //135
                height: 100, //125
                imgContainerRadius: 100,
                imgRadius: 100,
              ),

              // //discount
              // const Positioned(top: -20, left: -20, child: DiscountBadge()),

              //wishlist
              // Positioned(
              //     right: 5,
              //     top: 5,
              //     child: WishlistIcon(
              //       onTap: () {},
              //     //     )),
              //   ],
              // ),
              SizedBox(
                height: Sizes.spaceBetween / 2,
              ),
              //product title
              SizedBox(
                width: 135,
                child: Text(
                  TxtContexts.productTitle,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
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
                  TxtContexts.productPrice,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),

              SizedBox(
                height: Sizes.spaceBetween / 2 + 2,
              ),

              //add to cart
              GestureDetector(
                onTap: () {},
                child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text("add to cart".tr,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        color: Colors.white, fontSize: 9.2)),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Icon(
                              Iconsax.shopping_cart5,
                              color: Colors.orange,
                              size: 11,
                            ),
                            // child: Text("1",textAlign: TextAlign.center,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.orange),),
                          )
                        ],
                      ),
                    )),
              )

              // ElevatedButton.icon(
              //     style: ElevatedButton.styleFrom(
              //       padding:
              //           const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              //       backgroundColor: Colors.orange,
              //       // shape: RoundedRectangleBorder(
              //       //     borderRadius: BorderRadius.circular(12),
              //       //     )
              //     ),
              //     onPressed: () {},
              //     icon: Icon(
              //       Iconsax.shopping_cart,
              //       size: Sizes.spaceBetween,
              //       color: Colors.white,
              //     ),
              //     label: Text("Add to Cart",
              //         style: Theme.of(context)
              //             .textTheme
              //             .labelSmall!
              //             .copyWith(color: Colors.white, fontSize: 10))),
            ],
          ),
        ),
      ),
    );
  }
}
