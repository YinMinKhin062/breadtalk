import 'package:breadtalk/shop/screens/home.dart';
import 'package:breadtalk/shop/screens/setting.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:iconsax/iconsax.dart';

import 'shop/screens/cart.dart';
import 'shop/screens/post.dart';
import 'shop/screens/profile.dart';
import 'shop/screens/store.dart';
import 'shop/screens/widgets/storeWidgets/shop.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        textStyle: const TextStyle(),
        onTabItemSelected: (index) {
          setState(() {
            navController.currentIndex.value = index;
          });
        },
        labels: const ['Home', 'Store', 'News',  'Account'],
        tabBarHeight: 55,
        tabSize: 37,
        icons: const [
          Iconsax.home,
          Iconsax.shop,
          Iconsax.receipt,
          // Iconsax.shopping_cart,
          Iconsax.user
        ],
      ),
      body: Obx(() => navController.screens[navController.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  Rx<int> currentIndex = 0.obs;
  final screens = const [
    Home(),
    Store(),
    Post(),
    
    Profile(),
  ];
}
