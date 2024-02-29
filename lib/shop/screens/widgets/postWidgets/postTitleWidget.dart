import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class PostTitleWidget extends StatelessWidget {
  const PostTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Find out",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: Sizes.md,
          ),
          Text("the Latest News",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w900)),
          SizedBox(
            height: Sizes.defaultSpace,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            height: 45,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.spaceBetween),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search...",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.tune,
                        color: Colors.blueGrey,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
