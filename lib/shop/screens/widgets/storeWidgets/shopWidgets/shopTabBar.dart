import 'package:breadtalk/shop/screens/widgets/storeWidgets/tabBarCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../constants/imageContents.dart';
import '../../../../../constants/sizes.dart';
import '../../productWidgets/productWidget.dart';
import '../myGridView.dart';
import '../tabBarItems.dart';

class ShopTabBar extends StatelessWidget {
  const ShopTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
        SizedBox(
          child: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              indicatorColor: Colors.black,
              // dividerColor: Colors.transparent,
              // indicatorSize: TabBarIndicatorSize.tab,
              // indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(50),
              //     color: Colors.orange,
              //     border: Border.all(color: Colors.orange)),
              tabs: const [
                Tab(child: TabBarItems(text: "Breads")),
                Tab(child: TabBarItems(text: "Toasts")),
                Tab(child: TabBarItems(text: "Cakes")),
                Tab(child: TabBarItems(text: "Drinks")),
              ]),
        ),
        Expanded(
          child: TabBarView(children: [
            TabBarCategory(),
            Container(),
            Container(),
            Container(),
          ]),
        )
      ]),
    );
  }
}
