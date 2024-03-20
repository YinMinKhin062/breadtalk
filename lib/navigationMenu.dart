import 'package:breadtalk/shop/screens/home.dart';
import 'package:breadtalk/shop/screens/post.dart';
import 'package:breadtalk/shop/screens/profile.dart';
import 'package:breadtalk/shop/screens/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu>
    with TickerProviderStateMixin {
  // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "home".tr,
        controller: _motionTabBarController,
        icons: const [
          Iconsax.home,
          Iconsax.shop,
          Iconsax.receipt,
          Iconsax.user
        ],
        labels: ["home".tr, "store".tr, "news".tr, "account".tr],
        tabBarHeight: 55,
        tabSize: 37,
        onTabItemSelected: (index) {
          setState(() {
            _motionTabBarController!.index = index;
          });
        },
      ),
      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _motionTabBarController,
          children: const [Home(), Store(), Post(), Profile()]),
    );
  }
}
