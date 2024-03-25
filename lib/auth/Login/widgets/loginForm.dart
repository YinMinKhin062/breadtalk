import 'package:breadtalk/auth/singup/signup.dart';
import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/navigationMenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //email
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
              labelText: "E-mail"),
        ),
        SizedBox(
          height: Sizes.defaultSpace,
        ),

        //password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: "Password",
              suffixIcon: Icon(Iconsax.eye)),
        ),
        SizedBox(
          height: Sizes.defaultSpace,
        ),

        //sign in
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                //navigation page
                Get.to(() => const NavigationMenu());
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            )),
        SizedBox(
          height: Sizes.spaceBetween,
        ),
        //signup btn
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {
                Get.to(const SignUp());
              },
              child: const Text(
                TxtContexts.createAccount,
                style: TextStyle(color: Colors.orange),
              )),
        )
      ],
    ));
  }
}
