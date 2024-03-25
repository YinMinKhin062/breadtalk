import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/myOrderLists.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent, // <-- SEE HERE
              statusBarIconBrightness:
                  Brightness.dark, //<-- For Android SEE HERE (dark icons)
              statusBarBrightness:
                  Brightness.light, //<-- For iOS SEE HERE (dark icons)
            ),
            leading: IconButton(
              icon: const Icon(Iconsax.arrow_left),
              onPressed: () => Get.back(),
            ),
            title: Text(
              "My Orders",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            bottom: TabBar(
                labelColor: Colors.orange,
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.orange,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Pending Payment",
                  ),
                  Tab(
                    text: "Processing",
                  ),
                  Tab(
                    text: "On Hold",
                  ),
                  Tab(
                    text: "Completed",
                  ),
                  Tab(
                    text: "Cancelled",
                  ),
                  Tab(
                    text: "Refunded",
                  ),
                  Tab(
                    text: "Failded",
                  ),
                  Tab(
                    text: "Draft",
                  ),
                ]),
          ),
          body: TabBarView(children: [
            const MyOrderLists(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ])),
    );
  }
}
