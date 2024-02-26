import 'package:get/get.dart';

class ProductHoverController extends GetxController {
  static ProductHoverController get instance => Get.find();

  Rx<bool> isHovered=true.obs;

 void updatHover(){
      isHovered.value=!isHovered.value;
  }
}
