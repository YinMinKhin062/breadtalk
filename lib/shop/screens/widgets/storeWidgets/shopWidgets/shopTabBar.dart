import 'package:breadtalk/shop/screens/widgets/storeWidgets/tabBarCategory.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/imageContents.dart';
import '../tabbarItemsVertical.dart';

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
                Tab(child: SizedBox(
                 
                  child: TabBarItemVertical(text: "Breads",image: ImageContents.bugerImg,))),
                Tab(child: TabBarItemVertical(text: "Toasts",image:ImageContents.toastImg,)),
                Tab(child: TabBarItemVertical(text: "Cakes",image: ImageContents.cakeImg,)),
                Tab(child: TabBarItemVertical(text: "Drinks",image: ImageContents.drinkImg,)),
              ]
              ),
        ),
        Expanded(
          child: TabBarView(children: [
            const TabBarCategory(),
            Container(),
            Container(),
            Container(),
          ]),
        )
      ]),
    );
  }
}
