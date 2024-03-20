import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../orderListTile.dart';
import 'orderList.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        OrderList(),
        OrderListTile(),
      ],
    );
  }
}
