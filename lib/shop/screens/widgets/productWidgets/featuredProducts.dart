import 'package:breadtalk/shop/controllers/productHoverController.dart';
import 'package:breadtalk/shop/screens/widgets/productWidgets/featuredProductCart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import 'productWidget.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
  
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: Sizes.lg),
        child: const FeaturedProductCard(),
      ),
    );
  }
}
