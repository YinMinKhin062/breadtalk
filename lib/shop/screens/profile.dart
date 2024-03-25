import 'package:breadtalk/auth/Login/signIn.dart';
import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/personalization/screens/MyOrder/myOrder.dart';
import 'package:breadtalk/personalization/screens/coupons/coupons.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/utils/localization/controller.dart/localizationController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../constants/sizes.dart';
import 'widgets/listTileCard/listTile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LocalizationController());
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              //clipper
              ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  height: 220,
                  color: Colors.orange,
                ),
              ),

              //login btn
              // Positioned(
              //     top: 30,
              //     right: 15,
              //     child: TextButton.icon(
              //         onPressed: () {
              //           Get.to(() => const SignIn());
              //         },
              //         icon: const Icon(
              //           Icons.login,
              //           color: Colors.white,
              //           size: 18,
              //         ),
              //         label: Text(
              //           TxtContexts.login,
              //           style: Theme.of(context)
              //               .textTheme
              //               .labelLarge!
              //               .copyWith(color: Colors.white),
              //         ))),

              //container
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: const RoundedImage(
                      image: ImageContents.postImg,
                      showImgBorder: true,
                      imgContainerRadius: 100,
                      imgRadius: 100,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),

          //spacing
          SizedBox(
            height: Sizes.spaceBetween / 2,
          ),

          //profile name & subtitle
          GestureDetector(
            onTap: () {},
            child: Text(
              "Yin Min Khin",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          GestureDetector(
              onTap: () {},
              child: Text(
                "View Profile",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.black),
              )),

          //menu list
          Padding(
            padding: EdgeInsets.only(
                top: Sizes.spaceBetween,
                bottom: Sizes.spaceBetween,
                left: Sizes.spaceBetween,
                right: Sizes.spaceBetween),
            child: Column(
              children: [
                //list tile
                //My Orders
                MyListTile(
                  leadingIcon: Iconsax.bag_tick,
                  title: 'my orders'.tr,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {
                    Get.to(() => const MyOrder());
                  },
                ),

                //My Addresses
                MyListTile(
                  leadingIcon: Iconsax.house,
                  title: 'my addresses'.tr,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                //coupon details
                MyListTile(
                  leadingIcon: Iconsax.ticket, //discount shape
                  title: 'coupons'.tr,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {
                    Get.to(() => const Coupons());
                  },
                ),

                //language
                MyListTile(
                  leadingIcon: Iconsax.translate, //discount shape
                  title: 'language'.tr,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {
                    controller.selectedLanguagePopUp(context);
                  },
                ),

                //contact us
                MyListTile(
                  leadingIcon: Icons.forum_outlined,
                  title: 'contact us'.tr,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                //branches
                MyListTile(
                  leadingIcon: Iconsax.building,
                  title: 'branches'.tr,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                SizedBox(
                  height: Sizes.sm,
                ),

                // outsline btn
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {
                            Get.to(() => const SignIn());
                          },
                          child: Text(
                            "logout".tr,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: Colors.orange),
                          ))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
