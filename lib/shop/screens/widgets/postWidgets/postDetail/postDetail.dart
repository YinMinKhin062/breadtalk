import 'package:breadtalk/shop/screens/widgets/customAppBar.dart';
import 'package:breadtalk/shop/screens/widgets/postWidgets/postDetail/widgets/postDetailImg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            //appBar
            SizedBox(
              height: 100,
              child: Stack(
                children: [
                  CustomAppBar(
                    statusbarIconcolor: Brightness.light,
                    showBackArrow: true,
                    backArrowColor: Colors.white,
                    onPressed: () => Get.back(),
                    title: Text(
                      "Details",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            size: 22,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),

            //postdetail
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: const PostDetailWithImg(),
              ),
            )
          ],
        ));
  }
}
