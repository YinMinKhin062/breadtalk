import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/myGridView.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../constants/sizes.dart';
import 'widgets/postWidgets/postHorizontal.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.grey.withOpacity(.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image with oval_botttom shapes

          ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: CachedNetworkImage(
                // height: 200,
                imageUrl: ImageContents.newsImg,
                progressIndicatorBuilder: (context, url, progress) => SizedBox(
                    width: 20,
                    height: 20,
                    child: Center(
                        child: CircularProgressIndicator(
                      value: progress.progress,
                    ))),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              )),

          SizedBox(
            height: Sizes.spaceBetween + 2,
          ),

          //Latest News Heading
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Text(
                  "latest news".tr,
                  style: TextStyle(
                      fontSize: 20,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.orange),
                ),
                Text(
                  "latest news".tr,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: Sizes.spaceBetween,
          ),

          //search box
          SizedBox(
            width: double.infinity,
            child: RoundedContainer(
              showBoxShadow: true,
              margin: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              borderRadius: BorderRadius.circular(16),
              bgColor: Colors.white,
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.lg, vertical: Sizes.lg - 2),
              child: Row(
                children: [
                  const Icon(
                    Iconsax.search_favorite,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: Sizes.lg,
                  ),
                  Text(
                    "Search Posts...",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: Sizes.defaultSpace,
          ),

          //Post News Container and Post Lists
          Expanded(
              child: ClipRRect(
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(70)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(70)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      offset: const Offset(5, 5),
                      blurRadius: 10,
                      spreadRadius: 2),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0),
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: Sizes.defaultSpace - 8,
                    bottom: Sizes.defaultSpace,
                    left: Sizes.defaultSpace,
                    right: Sizes.defaultSpace,
                  ),
                  child: Column(
                    children: [
                      MyGridView(
                        mainAxisSpacing: Sizes.sm,
                        crossAxisSpacing: 0,
                        mainAxisExtent: 130,
                        crossAxisCount: 1,
                        itemCount: 8,
                        itemBuilder: (p0, p1) => const PostHorizontal(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
