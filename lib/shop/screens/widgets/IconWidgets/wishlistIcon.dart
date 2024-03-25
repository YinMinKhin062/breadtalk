import 'package:flutter/material.dart';

import '../circularWidgets/roundedContainer.dart';

class WishlistIcon extends StatelessWidget {
  const WishlistIcon({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
          // showBoxShadow: true,
          width: 30,
          height: 30,
          bgColor: Colors.white,
          borderRadius: BorderRadius.circular(30),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.favorite,
              size: 18,
            ),
          )),
    );
  }
}
