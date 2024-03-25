import 'package:breadtalk/shop/controllers/promoSliderController.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({super.key, required this.carouselList});

  final List<String> carouselList;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PromoSliderController());
    return Column(
      children: [
        CarouselSlider(
            items: carouselList
                .map((image) => RoundedImage(
                      image: image,
                      fit: BoxFit.cover,
                      margin: EdgeInsets.all(Sizes.sm),
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              onPageChanged: (index, reason) =>
                  controller.currentIndex.value = index,
            )),
        SizedBox(
          height: Sizes.sm / 2,
        ),

        //indicator
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  width: 8,
                  height: 8,
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
      ],
    );
  }
}
