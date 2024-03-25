import 'package:breadtalk/shop/screens/widgets/postWidgets/postHorizontal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../constants/sizes.dart';
import '../../widgets/storeWidgets/myGridView.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({super.key});

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
        title: Text("Posts",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              //post horizontal
              MyGridView(
                mainAxisSpacing: Sizes.sm,
                crossAxisSpacing: 0,
                mainAxisExtent: 130,
                crossAxisCount: 1, //column
                itemBuilder: (_, index) {
                  return const PostHorizontal();
                },
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
