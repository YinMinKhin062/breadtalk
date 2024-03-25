import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../orders/widgests/orderList/TitleWithValueWidget.dart';
import 'myOrderListTile.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(Sizes.spaceBetween),
      child: Column(
        children: [
          //image with product title
          const MyOrderListTile(),
          SizedBox(
            height: Sizes.spaceBetween,
          ),

          //order spec
          const TitlewithValue(
            title: 'Order Id',
            value: "#245",
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
            valueOfColor: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
