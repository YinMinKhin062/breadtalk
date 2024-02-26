import 'package:breadtalk/shop/screens/widgets/storeWidgets/myGridView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/sizes.dart';
import 'widgets/postWidgets/postHorizontal.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange.withOpacity(.9), Colors.white],
              begin: const FractionalOffset(0, .4),
              end: Alignment.topRight)),
      child: Column(
        children: [
          Container(
            height: 250,
          ),
          Expanded(
              child: ClipRRect(
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(70)),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top:Sizes.defaultSpace-8,
                    bottom:Sizes.defaultSpace,
                    left:Sizes.defaultSpace,
                    right:Sizes.defaultSpace,
                    ),
                  child: Column(
                    children: [
                      MyGridView(
                        mainAxisSpacing: Sizes.sm,
                        crossAxisSpacing: 0,
                        mainAxisExtent: 120,
                        crossAxisCount: 1,
                        itemCount: 8,
                        itemBuilder: (p0, p1) => const PostHorizontal(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
