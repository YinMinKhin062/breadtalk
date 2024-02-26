import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
          onTap: () {},
          child: RoundedContainer(
            width: MediaQuery.of(context).size.width,
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RoundedImage(
                    width: 80,
                    height: 80,
                    imgRadius: 10,
                    imgContainerRadius: 10,
                    image: ImageContents.postImg),
                SizedBox(
                  width: Sizes.spaceBetween,
                ),
                Expanded(
                  child: Text(
                    TxtContexts.readMoreContents,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SizedBox(
                  width: Sizes.spaceBetween,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                     Icons.keyboard_double_arrow_right,
                     
                    )),
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
