import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '';
import '../circularWidgets/roundedContainer.dart';

class DetailIcon extends StatelessWidget {
  const DetailIcon({super.key,this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
          width: 30,
          height: 30,
          bgColor: Colors.white,
          borderRadius: BorderRadius.circular(30),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Iconsax.eye,
              size: 18,
            ),
          )),
    );
    ;
  }
}
