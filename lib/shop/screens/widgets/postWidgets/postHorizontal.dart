import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:breadtalk/shop/screens/widgets/postWidgets/postDetail/postDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/textContents.dart';

class PostHorizontal extends StatelessWidget {
  const PostHorizontal({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => const PostDetail());
          },
          child: RoundedContainer(
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image
                const RoundedImage(
                    width: 80,
                    height: 80,
                    imgRadius: 10,
                    imgContainerRadius: 10,
                    image: ImageContents.postImg),
                SizedBox(
                  width: Sizes.spaceBetween,
                ),

                //text
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //date
                      RoundedContainer(
                        borderRadius: BorderRadius.circular(Sizes.sm),
                        bgColor: Colors.amber,
                        padding: EdgeInsets.symmetric(horizontal: Sizes.sm),
                        child: const Text(TxtContexts.postDateTxt),
                      ),
                      SizedBox(
                        height: Sizes.md,
                      ),
                      //post title
                      Text(
                        TxtContexts.postTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: Sizes.sm,
                      ),
                      //body
                      Text(
                        TxtContexts.readMoreContents,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: Sizes.spaceBetween,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blueGrey,
                  child: IconButton(
                      onPressed: () {
                        Get.to(() => const PostDetail());
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Sizes.lg,
        ),
        Divider(
          color: Colors.grey.withOpacity(.3),
        )
      ],
    );
  }
}
