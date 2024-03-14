import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/controllers/productController.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:breadtalk/shop/screens/widgets/productWidgets/productWidget.dart';
import 'package:breadtalk/shop/screens/widgets/shoppingCartWidget.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/tabBarCategory.dart';

import 'package:breadtalk/shop/screens/widgets/storeWidgets/tabBarItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/sizes.dart';
import 'widgets/storeWidgets/myGridView.dart';
import 'widgets/storeWidgets/shopWidgets/shopTabBar.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = Get.put(ProductController());
    return DefaultTabController(
      length: 5,
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
                onPressed: () => productController.filterByPrice(context),
                icon: const Icon(Iconsax.sort)),
            title: Row(
          
              children: [
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 10.0),
                // child: RoundedContainer(
                //   borderRadius: BorderRadius.circular(10),
                //   bgColor: Colors.grey.withOpacity(.3),
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Text(
                //           "Search Products",
                //           style: Theme.of(context)
                //               .textTheme
                //               .bodyLarge!
                //               .copyWith(
                //                   fontWeight: FontWeight.w600,
                //                   color: Colors.grey),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                //   ),
                // ),
                Text(
                  "Our Menu",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Iconsax.search_normal)),
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: ShoppingCart(),
              )
            ],
            bottom: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                unselectedLabelColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                indicatorColor: Colors.black,
                // dividerColor: Colors.transparent,
                // indicatorSize: TabBarIndicatorSize.tab,
                // indicator: BoxDecoration(
                //   borderRadius: BorderRadius.circular(50),
                //   color: Colors.green,
                // ),
                tabs: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: const Tab(
                        child: TabBarItems(
                            image: ImageContents.bugerImg, text: "All")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: const Tab(
                        child: TabBarItems(
                            image: ImageContents.bugerImg, text: "Breads")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: const Tab(
                        child: TabBarItems(
                            image: ImageContents.toastImg, text: "Toasts")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: const Tab(
                        child: TabBarItems(
                            image: ImageContents.cakeImg, text: "Cakes")),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: const Tab(
                        child: TabBarItems(
                            width: 20,
                            height: 20,
                            image: ImageContents.drinkImg,
                            text: "Drinks")),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            const TabBarCategory(),
            Container(),
            Container(),
            Container(),
            Container(),
          ])),
    );
  }
}
