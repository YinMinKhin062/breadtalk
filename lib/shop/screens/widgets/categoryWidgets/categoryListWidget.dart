import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../constants/sizes.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RoundedContainer(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: Sizes.lg),
                  borderRadius: BorderRadius.circular(50),
                  child: const RoundedImage(
                    width: 50,
                    height: 50,
                    imgRadius: 50,
                    imgContainerRadius: 50,
                    image: ImageContents.categoryImg,
                  ),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(50),
                  //   child: CachedNetworkImage(
                  //     fit: BoxFit.cover,
                  //     width: 50,
                  //     height: 50,
                  //     imageUrl: ImageContents.categoryImg,
                  //     progressIndicatorBuilder: (context, url, progress) =>
                  //         SizedBox(
                  //       width: 10,
                  //       height: 10,
                  //       child: Center(
                  //         child: CircularProgressIndicator(
                  //           value: progress.progress,
                  //         ),
                  //       ),
                  //     ),
                  //     errorWidget: (context, url, error) =>
                  //         const Icon(Icons.error),
                  //   ),
                  // ),
                ),
                
                SizedBox(
                  height: Sizes.spaceBetween / 2,
                ),
                SizedBox(
                  width: 50,
                  child: Text(
                    "Bread (5)",
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
