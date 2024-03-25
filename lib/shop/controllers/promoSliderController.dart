import 'package:get/get.dart';

class PromoSliderController extends GetxController {
  static PromoSliderController get instance => Get.find();

  //variable
  Rx<int> currentIndex = 0.obs;
}
