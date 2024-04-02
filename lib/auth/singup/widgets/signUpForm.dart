import 'package:breadtalk/auth/controller/resgisterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(registerController());
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
        Obx(
          () => TextFormField(
            obscureText: controller.isHidePassword.value,
            decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: GestureDetector(
                    onTap: () {
                      controller.isHidePassword.value =
                          !controller.isHidePassword.value;
                    },
                    child: Icon(controller.isHidePassword.value
                        ? Iconsax.eye
                        : Iconsax.eye_slash))),
          ),
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
