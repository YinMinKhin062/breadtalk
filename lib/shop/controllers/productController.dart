import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/sizes.dart';
import '../screens/widgets/storeWidgets/myRangeSlider.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  Rx<RangeValues> values = const RangeValues(1000, 2500).obs;

  Future<dynamic> filterByPrice(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Filter By Price",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const MyRangeSlider(),
              SizedBox(
                height: Sizes.spaceBetween / 2,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Filter",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.white),
                      ))),
              SizedBox(
                height: Sizes.spaceBetween / 2,
              )
            ],
          ),
        );
      },
    );
  }
}
