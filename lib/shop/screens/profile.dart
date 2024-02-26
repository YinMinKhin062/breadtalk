import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:iconsax/iconsax.dart';
import '../../constants/sizes.dart';
import '../../constants/textContents.dart';
import 'widgets/listTileCard/listTile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
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
                  title: TxtContexts.myOrderTxt,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                //My Addresses
                MyListTile(
                  leadingIcon: Iconsax.house,
                  title: TxtContexts.myAddressesTxt,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                //Account details
                MyListTile(
                  leadingIcon: Iconsax.ticket, //discount shape
                  title: TxtContexts.couponsTxt,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                //contact us
                MyListTile(
                  leadingIcon: Icons.forum_outlined,
                  title: TxtContexts.contactUsTxt,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                //branches
                MyListTile(
                  leadingIcon: Iconsax.building,
                  title: TxtContexts.branchesTxt,
                  trailingIcon: Icons.arrow_forward_ios,
                  onTap: () {},
                ),

                SizedBox(
                  height: Sizes.sm,
                ),

                //outline btn
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Logout",
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
