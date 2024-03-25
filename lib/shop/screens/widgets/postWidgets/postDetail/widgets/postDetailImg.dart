import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/IconwithTxt.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedImg.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../../../constants/sizes.dart';

class PostDetailWithImg extends StatelessWidget {
  const PostDetailWithImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace, vertical: Sizes.md),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          //post title
          Center(
            child: Text(
              TxtContexts.postTitle,
              softWrap: true,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 20),
            ),
          ),
          SizedBox(
            height: Sizes.spaceBetween / 2,
          ),
          //post date
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              IconwithTxt(
                  color: Colors.orange,
                  icon: Iconsax.calendar,
                  txt: TxtContexts.postDateTxt),
            ],
          ),
          SizedBox(
            height: Sizes.spaceBetween,
          ),

          //post img
          RoundedImage(
              width: MediaQuery.of(context).size.width * .8,
              height: 180,
              imgRadius: 0,
              imgContainerRadius: 0,
              image: ImageContents.postDetailImg),
          SizedBox(
            height: Sizes.defaultSpace,
          ),

          //post detail
          const ReadMoreText(
            TxtContexts.readMoreContents,
            trimLines: 6,
            trimMode: TrimMode.Length,
            trimExpandedText: "Show Less",
            trimCollapsedText: "Read More",
            moreStyle: TextStyle(color: Colors.blueGrey),
            lessStyle: TextStyle(color: Colors.blueGrey),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: Sizes.spaceBetween,
          ),
        ],
      ),
    );
  }
}
