import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CountdownController extends GetxController {
  static CountdownController get instance => Get.find();

  //initialization
  final Rx<Timer> timer = Timer.periodic(const Duration(), (timer) {}).obs;
  final Rx<DateTime> deadline = DateTime.now().obs;
  Rx<Duration> duration = const Duration(seconds: 0).obs;

  void onInit() {
    super.onInit();

    //initialazation time difference between countdowntime and current time
    duration.value = deadline.value.difference(DateTime.now());

    timer.value = Timer.periodic(const Duration(seconds: 1), (timer) {
      //time difference between countdowntime and current time
      duration.value = deadline.value.difference(DateTime.now());

      //timer is stop when countdown hits zero
      if (duration.value.isNegative || duration.value.inSeconds == 0) {
        timer.cancel();
      }
    });
  }

  void dispose() {
    timer.value.cancel();
    super.dispose();
  }

  String twoDigit(int n) => n.toString().padLeft(2, "0");

  String twoDigitDay() {
    return twoDigit(duration.value.inDays);
  }

  String twoDigitMin() {
    return twoDigit(duration.value.inMinutes.remainder(60));
  }

  String twoDigitSecond() {
    return twoDigit(duration.value.inSeconds.remainder(60));
  }

  String twoDigitHours() {
    return twoDigit(duration.value.inHours.remainder(24));
  }
}
