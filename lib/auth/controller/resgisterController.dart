import 'package:get/get.dart';

class registerController extends GetxController {
  static registerController get instance => Get.find();

  RxBool isHidePassword = true.obs;
}
