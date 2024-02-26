import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSliderController extends GetxController {
  static PromoSliderController get instance => Get.find();

  //variable
  Rx<int> currentIndex = 0.obs;
}
