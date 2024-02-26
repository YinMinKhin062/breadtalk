import 'package:breadtalk/constants/textContents.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../constants/imageContents.dart';
import '../../../../constants/sizes.dart';
import '../circularWidgets/roundedContainer.dart';
import '../circularWidgets/roundedImg.dart';
import 'package:readmore/readmore.dart';

class PostListWidget extends StatelessWidget {
  const PostListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      height: 220,
      // bgColor: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //post img & Date
          Stack(
            clipBehavior: Clip.none,
            children: [
              // post img
              const RoundedImage(
                width: 135,
                height: 125,
                fit: BoxFit.cover,
                image: ImageContents.postImg,
              ),

              //date
              Positioned(
                // left: 1,
                bottom: -10,
                left: 15,
                child: RoundedContainer(
                  padding: EdgeInsets.all(Sizes.sm),
                  bgColor: Colors.orange,
                  borderRadius: BorderRadius.circular(5),
                  child: Text(
                    TxtContexts.postDateTxt,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),

          //space between item
          SizedBox(
            height: Sizes.spaceBetween,
          ),

          //post body
          SizedBox(
            width: 135,
            child: Text(
              TxtContexts.readMoreContents,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
