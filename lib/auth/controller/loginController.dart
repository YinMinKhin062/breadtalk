import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../navigationMenu.dart';

class loginController extends GetxController {
  static loginController get instance => Get.find();

  RxBool isHidePassword = true.obs;
  GlobalKey<FormState> signInformkey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  void oninit() {
    super.onInit();
    // email.text = '';
    // password.text = '';
  }

  void signIn() {
    if (signInformkey.currentState!.validate()) {
      if (kDebugMode) {
        print("Validate");
      }
      //navigation page
      Get.to(() => const NavigationMenu());
    }
  }
}
