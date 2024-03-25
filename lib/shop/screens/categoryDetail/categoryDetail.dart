import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/imageContents.dart';
import '../../../constants/sizes.dart';
import '../allProducts/sortableProduct.dart';
import '../widgets/circularWidgets/containerWithImgCard.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // String? selectedValue;

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
        title: Text("Bread",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              //category card
              const ContainerWithImgCard(
                  width: 70,
                  height: 70,
                  image: ImageContents.categoryImg,
                  title: "Breads",
                  subtitle: "12 items",
                  widget: Text("")),

              SizedBox(
                height: Sizes.spaceBetweenSections,
              ),

              const SortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
