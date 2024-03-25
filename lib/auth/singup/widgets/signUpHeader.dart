import 'package:flutter/material.dart';

import '../../../constants/imageContents.dart';
import '../../../constants/sizes.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //stack container with image
        Stack(
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                color: Colors.blueGrey.withOpacity(.2),
                height: 180,
              ),
            ),
            // Container(
            //   height: 180,
            //   decoration: BoxDecoration(
            //       color: Colors.grey.withOpacity(.2),
            //       borderRadius: const BorderRadius.only(
            //         bottomRight: Radius.circular(100),
            //         bottomLeft: Radius.circular(100),
            //       )),
            // ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: Sizes.spaceBetween * 2,
                  ),
                  const Image(
                    image: AssetImage(
                      ImageContents.breadtalkGifforSignUp,
                    ),
                    width: 200,
                    height: 150,
                  ),
                ],
              ),
            ),
            // Positioned(
            //     top: 55,
            //     left: 55,
            //     child: Stack(
            //       children: [
            //         Text(
            //           "Eating is Blessing!",
            //           style: TextStyle(
            //               fontStyle: FontStyle.italic,
            //               foreground: Paint()
            //                 ..style = PaintingStyle.stroke
            //                 ..strokeWidth = 4
            //                 ..color = Colors.white),
            //         ),
            //         const Text(
            //           "Eating is Blessing!",
            //           style: TextStyle(
            //               color: Colors.blueGrey, fontStyle: FontStyle.italic),
            //         ),
            //       ],
            //     )),

            // Positioned(
            //     top: 45,
            //     left: 65,
            //     child: Stack(
            //       children: [
            //         Text(
            //           "is Blessing!",
            //           style: TextStyle(
            //               fontStyle: FontStyle.italic,
            //               foreground: Paint()
            //                 ..style = PaintingStyle.stroke
            //                 ..strokeWidth = 4
            //                 ..color = Colors.white),
            //         ),
            //         const Text(
            //           "is Blessing!",
            //           style: TextStyle(
            //               color: Colors.blueGrey, fontStyle: FontStyle.italic),
            //         ),
            //       ],
            //     ))
          ],
        ),

        //breadtalk Logo Txt
        const Image(
          image: AssetImage(ImageContents.signInLogo),
          width: 140,
          height: 110,
        ),
      ],
    );
  }
}
