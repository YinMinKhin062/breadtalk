import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import 'orderList/TitleWithValueWidget.dart';

class OrderListTile extends StatelessWidget {
  const OrderListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBoxShadow: true,
      borderRadius: BorderRadius.circular(16),
      margin: EdgeInsets.symmetric(
          horizontal: Sizes.spaceBetweenSections,
          vertical: Sizes.spaceBetween / 2),
      // bgColor: Colors.blueGrey.withOpacity(.2),
      padding: EdgeInsets.symmetric(
          vertical: Sizes.spaceBetween, horizontal: Sizes.sm),
      child: Column(
        children: [
          //Img with product title
          ListTile(
            leading: const RoundedImage(
              image: ImageContents.productImg,
              width: 55,
              height: 65,
            ),
            title: Text(
              TxtContexts.productTitle,
              softWrap: true,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            subtitle: const Text(
              "3 items",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
