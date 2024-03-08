import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../constants/imageContents.dart';
import '../../../constants/sizes.dart';
import 'loginForm.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

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
            //       color: Colors.blueGrey.withOpacity(.2),
            //       borderRadius: const BorderRadius.only(
            //         bottomRight: Radius.circular(100),
            //         bottomLeft: Radius.circular(100),
            //       )),
            // ),
            Positioned(
              top: 10,
              left: 36,
              // alignment: Alignment.bottomLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: Sizes.spaceBetween * 3,
                  ),
                  const Image(
                    image: AssetImage(
                      ImageContents.breadtalkGif,
                    ),
                    width: 200,
                    height: 150,
                  ),
                ],
              ),
            ),
            Positioned(
                top: 120,
                right: 106,
                child: Stack(
                  children: [
                    Text(
                      "Let's Order!",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 4
                            ..color = Colors.white),
                    ),
                    const Text(
                      "Let's Order!",
                      style: TextStyle(
                          color: Colors.orange, fontStyle: FontStyle.italic),
                    ),
                  ],
                ))
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
