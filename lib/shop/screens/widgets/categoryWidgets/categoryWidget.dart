import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';
import '../circularWidgets/roundedContainer.dart';
import '../circularWidgets/roundedImg.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      // bgColor: Colors.orange,
      height: 160, //180
      margin: EdgeInsets.only(right: Sizes.lg),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Sizes.lg),
        topRight: Radius.circular(Sizes.lg),
      ),
      child: Column(
        children: [
          const RoundedImage(
            image: ImageContents.categoryImg,
            fit: BoxFit.cover,
            width: 135,
            height: 125,
          ),
          SizedBox(height: Sizes.spaceBetween / 2),
          SizedBox(
            width: 135,
            child: Center(
              child: Text(
                "Bread (5)",
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
