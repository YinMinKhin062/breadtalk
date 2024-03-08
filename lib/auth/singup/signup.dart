import 'package:breadtalk/auth/Login/widgets/loginForm.dart';
import 'package:breadtalk/auth/Login/widgets/loginHeader.dart';
import 'package:breadtalk/constants/imageContents.dart';
import 'package:breadtalk/shop/screens/widgets/circularWidgets/roundedContainer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../constants/sizes.dart';
import 'widgets/signUpForm.dart';
import 'widgets/signUpHeader.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SignUpHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SignUpForm(),
            )
          ],
        ),
      ),
    );
  }
}
