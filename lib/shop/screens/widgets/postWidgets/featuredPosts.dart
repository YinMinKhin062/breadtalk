import 'package:breadtalk/shop/screens/widgets/postWidgets/postListWidget.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class FeaturedPosts extends StatelessWidget {
  const FeaturedPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) => Padding(
        padding:  EdgeInsets.only(right: Sizes.lg),
        child: const PostListWidget(),
      ),
    );
  }
}
