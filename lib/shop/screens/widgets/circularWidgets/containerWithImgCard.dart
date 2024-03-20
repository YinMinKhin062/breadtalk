import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';

class ContainerWithImgCard extends StatelessWidget {
  const ContainerWithImgCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      this.width = 100,
      this.height = 100,
      required this.widget});

  final String image;
  final String title;
  final String subtitle;
  final Widget widget;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBoxShadow: true,
      borderRadius: BorderRadius.circular(16),
      bgColor: Colors.white,
      child: Row(
        children: [
          //category Image
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            )),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: image,
                width: width,
                height: height,
                progressIndicatorBuilder: (context, url, progress) => Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      value: progress.progress,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),

          SizedBox(
            width: Sizes.spaceBetween,
          ),

          //column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(height: Sizes.sm),
                Text(subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: Colors.grey)),
              ],
            ),
          ),
          widget 
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.arrow_forward_ios,
          //       size: 20,
          //     ))
        ],
      ),
    );
  }
}
