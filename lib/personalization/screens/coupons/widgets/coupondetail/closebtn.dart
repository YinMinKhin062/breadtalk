import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CloseBtn extends StatelessWidget {
  const CloseBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: RoundedContainer(
        padding: const EdgeInsets.all(15),
        borderRadius: BorderRadius.circular(50),
        width: 60,
        height: 60,
        bgColor: Colors.white,
        child: const Icon(
          Icons.close,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
