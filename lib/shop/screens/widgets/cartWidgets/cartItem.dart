import 'package:breadtalk/constants/imageContents.dart';
import 'package:flutter/material.dart';

import '../circularWidgets/containerWithImgCard.dart';
import 'quantityBtn.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerWithImgCard(
      width: 90,
      height: 90,
      image: ImageContents.cartItemImg,
      title: "Hawaiian Pizza",
      subtitle: "4200 MMK",
      widget: Padding(
        padding: EdgeInsets.symmetric(horizontal:20.0),
        // child: AddRemoveBtn(),
        child: QuantityBtn(),
      ),
    );
    // RoundedContainer(
    //     padding: EdgeInsets.symmetric(
    //         vertical: Sizes.spaceBetween + 4, horizontal: Sizes.defaultSpace),
    //     borderRadius: BorderRadius.circular(10),
    //     showBoxShadow: true,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         const RoundedImage(
    //           image: ImageContents.cartItemImg,
    //           width: 50,
    //           height: 50,
    //           imgRadius: 100,
    //           imgContainerRadius: 100,
    //         ),

    //         SizedBox(
    //           width: Sizes.spaceBetween,
    //         ),

    //         Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               "Hawaiian Pizza",
    //               style: Theme.of(context).textTheme.labelLarge!.copyWith(),
    //             ),
    //             SizedBox(
    //               height: Sizes.sm,
    //             ),
    //             Text(
    //               "4200 MMK",
    //               style: Theme.of(context)
    //                   .textTheme
    //                   .labelSmall!
    //                   .copyWith(color: Colors.grey),
    //             )
    //           ],
    //         ),

    //         SizedBox(
    //           width: Sizes.spaceBetween,
    //         ),

    //         //add, remove btn
    //         const AddRemoveBtn(),
    //       ],
    //     ));
  }
}
