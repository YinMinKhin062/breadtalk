import 'package:breadtalk/constants/textContents.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //user name
        TextFormField(
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.user,
              ),
              labelText: "User Name"),
        ),
        SizedBox(
          height: Sizes.defaultSpace,
        ),

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

        //btn
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Create Account",
                style: TextStyle(color: Colors.white),
              ),
            )),
      ],
    ));
  }
}
