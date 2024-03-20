import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import 'TitleWithValueWidget.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      borderRadius: BorderRadius.circular(16),
      bgColor: Colors.grey.withOpacity(.3),
      margin: EdgeInsets.only(
        top: Sizes.spaceBetweenSections * 1.5,
        bottom: Sizes.spaceBetween,
        left: Sizes.spaceBetweenSections * 1.5,
        right: Sizes.spaceBetweenSections * 1.5,
      ),
      padding: EdgeInsets.only(
        top: Sizes.spaceBetween * 4.5,
        bottom: Sizes.spaceBetween / 2,
        left: Sizes.spaceBetween,
        right: Sizes.spaceBetween,
      ),
      child: Column(
        children: [
          const TitlewithValue(
            title: "Order ID",
            value: "#345",
          ),
          SizedBox(
            height: Sizes.spaceBetween / 2,
          ),
          const TitlewithValue(
            title: "Total",
            value: "MMK 4200",
          ),
          SizedBox(
            height: Sizes.spaceBetween / 2,
          ),
          const TitlewithValue(
            title: "Status",
            value: "Processing",
          ),
        ],
      ),
    );
  }
}
