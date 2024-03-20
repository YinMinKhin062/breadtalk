import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';

class OrderStatusTxt extends StatelessWidget {
  const OrderStatusTxt({super.key, required this.titleList});

  final List<String> titleList;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OrderStatusController());
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Obx(
          () => GestureDetector(
            onTap: () {
              controller.currentIndex.value = index;
            },
            child: RoundedContainer(
                margin: EdgeInsets.only(
                    left: Sizes.spaceBetween - 2,
                    top: Sizes.sm,
                    bottom: Sizes.sm),
                height: 30,
                padding: EdgeInsets.symmetric(
                    vertical: Sizes.sm, horizontal: Sizes.spaceBetween),
                borderRadius: BorderRadius.circular(50),
                showBorder:
                    controller.currentIndex.value == index ? false : true,
                borderColor: Colors.orange,
                bgColor: controller.currentIndex.value == index
                    ? Colors.orange
                    : Colors.white,
                child: Center(
                  child: Text(
                    titleList[index],
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: controller.currentIndex.value == index
                            ? Colors.white
                            : Colors.orange),
                  ),
                )),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: Sizes.sm - 2,
      ),
    );
  }
}

class OrderStatusController extends GetxController {
  static OrderStatusController get instance => Get.find();

  final RxInt currentIndex = 0.obs;
}
