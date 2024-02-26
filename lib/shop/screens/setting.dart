import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:breadtalk/shop/screens/widgets/listTileCard/profileCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/sizes.dart';
import 'widgets/listTileCard/listTile.dart';
import 'widgets/listTileCard/listTileCard.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green.withOpacity(.1),
      appBar: CustomAppBar(
          title: Text(
        TxtContexts.myAccountAppBarTxt,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.w600),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            // top: Sizes.sm,
            bottom: Sizes.defaultSpace,
            left: Sizes.defaultSpace,
            right: Sizes.defaultSpace,
          ),
          child: Column(
            children: [
              //profile card
              const ProfileCard(
                  cardColor: Colors.orange,
                  leading: RoundedImage(
                      width: 50,
                      height: 50,
                      imgRadius: 50,
                      imgContainerRadius: 50,
                      showImgBorder: true,
                      image: ImageContents.postImg),
                  title: TxtContexts.accountName,
                  subtitle: TxtContexts.viewProfileTxt,
                  trailing: Icons.arrow_forward_ios),

              //spacebetween items
              SizedBox(
                height: Sizes.defaultSpace,
              ),

              //General Card
              ListTileCard(
                cardTitle: TxtContexts.generalTxt,
                listTiles: Column(
                  children: [
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
                  ],
                ),
              ),

              //spacebetween items
              SizedBox(
                height: Sizes.defaultSpace,
              ),

              //support card
              ListTileCard(
                cardTitle: TxtContexts.supportTxt,
                listTiles: Column(
                  children: const [
                    MyListTile(
                      leadingIcon: Icons.forum_outlined,
                      title: TxtContexts.contactUsTxt,
                      trailingIcon: Icons.arrow_forward_ios,
                    ),
                    MyListTile(
                      leadingIcon: Iconsax.building,
                      title: TxtContexts.branchesTxt,
                      trailingIcon: Icons.arrow_forward_ios,
                    )
                  ],
                ),
              ),

              //spacebetween items
              SizedBox(
                height: Sizes.spaceBetween,
              ),

              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Logout",
                        style: Theme.of(context).textTheme.bodyMedium,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
