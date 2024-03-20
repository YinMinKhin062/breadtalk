import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import 'myOrderCard.dart';

class MyOrderLists extends StatelessWidget {
  const MyOrderLists({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey.withOpacity(.1),
        child: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index) => const MyOrderCard(),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: Sizes.spaceBetween / 2,
          ),
        ));
  }
}
