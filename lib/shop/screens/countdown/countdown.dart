import 'package:breadtalk/shop/screens/countdown/widgets/countdownTimer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/sizes.dart';
import '../../controllers/countdown/countdownController.dart';
import '../widgets/circularWidgets/roundedContainer.dart';

class Countdown extends StatelessWidget {
  const Countdown({super.key, required this.deadline});

  final DateTime deadline;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CountdownController());
    controller.deadline.value = deadline;
    return RoundedContainer(
        // bgColor: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(20),
        bgColor: Colors.pinkAccent.withOpacity(.1),
        // showBorder: true,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) {
                return const LinearGradient(
                        colors: [
                      Colors.orange,
                      Colors.green,
                      Colors.grey,
                    ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.clamp)
                    .createShader(bounds);
              },
              child: Text(
                "Sale Ends in :",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w900,
                      // color: Colors.black.withOpacity(.4)
                    ),
              ),
            ),
            SizedBox(
              height: Sizes.spaceBetween,
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CountdownTimer(
                      timeVal: controller.twoDigitDay(), txtVal: "Days"),
                  const SizedBox(
                    width: 19,
                  ),
                  CountdownTimer(
                      timeVal: controller.twoDigitHours(), txtVal: "Hours"),
                  const SizedBox(
                    width: 16,
                  ),
                  CountdownTimer(
                      timeVal: controller.twoDigitMin(), txtVal: "Minutes"),
                  const SizedBox(
                    width: 16,
                  ),
                  CountdownTimer(
                      timeVal: controller.twoDigitSecond(), txtVal: "Seconds"),
                ],
              ),
            ),
          ],
        ));
  }
}
