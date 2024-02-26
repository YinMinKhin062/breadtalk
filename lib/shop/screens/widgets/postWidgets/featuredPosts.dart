import 'package:breadtalk/shop/screens/widgets/postWidgets/postListWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
