import 'package:breadtalk/shop/controllers/productController.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Column(
      children: [
        SizedBox(
          height: Sizes.spaceBetween,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${controller.values.value.start} MMK"),
            Text("${controller.values.value.end} MMK"),
          ],
        ),
        Obx(
          () => RangeSlider(
            activeColor: Colors.orange,
            inactiveColor: Colors.grey.withOpacity(.2),
            divisions: 5,
            labels: RangeLabels(
                "${controller.values.value.start.toString()} MMK",
                "${controller.values.value.end.toString()} MMK"),
            min: 1000,
            max: 2500, //controller.values.value.end
            values: controller.values.value,
            onChanged: (value) {
              setState(() {
                controller.values.value = value;
                if (kDebugMode) {
                  print(controller.values.value.start);
                  print(controller.values.value.end);
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
