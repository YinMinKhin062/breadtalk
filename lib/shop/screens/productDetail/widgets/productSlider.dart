import 'package:breadtalk/shop/controllers/promoSliderController.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/sizes.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({super.key, required this.carouselList});

  final List<String> carouselList;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PromoSliderController());
    return Column(
      children: [
        SizedBox(
          height: Sizes.spaceBetweenSections,
        ),
        //indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //back btn
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Iconsax.arrow_left)),

            //indicator
            Obx(
              () => Row(
                children: [
                  for (int i = 0; i < carouselList.length; i++)
                    Container(
                      width: 16,
                      height: 4,
                      decoration: BoxDecoration(
                          color: controller.currentIndex.value == i
                              ? Colors.orange
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(8)),
                      margin: EdgeInsets.all(Sizes.sm),
                    ),
                ],
              ),
            ),

            // wishlist icon
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
          ],
        ),

        SizedBox(
          height: Sizes.sm ,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CarouselSlider(
              items: carouselList
                  .map((image) => RoundedImage(
                        width: MediaQuery.of(context).size.width*.8,
                        height: 150,
                        image: image,
                        imgRadius: 10,
                        imgContainerRadius: 10,
                        fit: BoxFit.cover,
                        margin: EdgeInsets.all(Sizes.sm),
                      ))
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 1,
                scrollDirection: Axis.horizontal,
                // autoPlay: true,
                onPageChanged: (index, reason) =>
                    controller.currentIndex.value = index,
              )),
        ),

        // SizedBox(height: Sizes.spaceBetween,)
      ],
    );
  }
}
