import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/sizes.dart';
import '../circularWidgets/containerWithImgCard.dart';

class CatergoryScreen extends StatelessWidget {
  const CatergoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          // <-- SEE HERE
          statusBarIconBrightness:
              Brightness.dark, //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Iconsax.arrow_left)),
        title: Text("All Categoires",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Sizes.defaultSpace, vertical: Sizes.spaceBetween),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RoundedImage(image: ImageContents.shopImg1),
              SizedBox(
                height: Sizes.spaceBetweenSections,
              ),
              // Text("All Categories",
              //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              //         fontWeight: FontWeight.w600, color: Colors.blueGrey)),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ContainerWithImgCard(
                        width: 90,
                        height: 90,
                        image: ImageContents.categoryImg,
                        title: "Breads",
                        subtitle: "12 items",
                        widget: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            )),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: Sizes.spaceBetween,
                      ),
                  itemCount: 5),
              SizedBox(
                height: Sizes.spaceBetween,
              )
            ],
          ),
        ),
      ),
    );
  }
}
