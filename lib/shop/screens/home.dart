import 'package:breadtalk/shop/screens/widgets/postWidgets/featuredPosts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/imageContents.dart';
import '../../constants/sizes.dart';
import '../../constants/textContents.dart';
import 'widgets/categoryWidgets/categoryListWidget.dart';
import 'widgets/categoryWidgets/featuredCategoires.dart';
import 'widgets/customAppBar.dart';
import 'widgets/headerSection.dart';
import 'widgets/productWidgets/featuredProducts.dart';
import 'widgets/promoSlider.dart';
import 'widgets/searchBar.dart';
import 'widgets/shoppingCartWidget.dart';
import 'widgets/wishlistWidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar
      appBar: CustomAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: 'Bread',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.orange),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Talk',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.w600, color: Colors.grey))
                ])),
            Text(
              "Eating is blessing!",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w300),
            )
          ],
        ),
        actions: const [
          Wishlist(),
          ShoppingCart(),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              automaticallyImplyLeading: false,
              expandedHeight: 98,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.orange,
                  child: Padding(
                    padding: EdgeInsets.all(Sizes.defaultSpace),
                    child: const SearchBar(
                        text: TxtContexts.searchBoxTxt,
                        icon: Iconsax.search_normal),
                  ),
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //featured categories' hearder
                HeaderSection(
                  title: TxtContexts.featuredCategoriesTxt,
                  onPressed: () {},
                ),
                SizedBox(
                  height: Sizes.sm / 2,
                ),
                //featured categories
                // const SizedBox(height: 160, child: CategoryListWidget()),
                const CategoryListWidget(),

                SizedBox(
                  height: Sizes.defaultSpace,
                ), //spacebetweenitem

                //promo slider
                const PromoSlider(carouselList: [
                  ImageContents.carousel_img1,
                  ImageContents.carousel_img2,
                  ImageContents.carousel_img3
                ]),

                SizedBox(
                  height: Sizes.spaceBetween,
                ), //spacebetweenitem

                //featured products' hearder
                HeaderSection(
                  title: TxtContexts.featuredProductsTxt,
                  onPressed: () {},
                ),
                SizedBox(
                  height: Sizes.sm / 2,
                ),
                //featured products
                const SizedBox(height: 180, child: FeaturedProducts()),

                SizedBox(
                  height: Sizes.spaceBetween,
                ), //spacebetweenitem

                //featured posts' hearder
                HeaderSection(
                  title: TxtContexts.latestNewsTxt,
                  onPressed: () {},
                ),
                SizedBox(
                  height: Sizes.sm / 2,
                ),
                //featured posts
                const SizedBox(height: 210, child: FeaturedPosts()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
