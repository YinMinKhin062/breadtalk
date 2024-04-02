import 'package:breadtalk/auth/controller/loginController.dart';
import 'package:breadtalk/auth/singup/signup.dart';
import 'package:breadtalk/constants/textContents.dart';
import 'package:breadtalk/navigationMenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizes.dart';
import '../../../utils/validators/validators.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());
    return Form(
        key: controller.signInformkey,
        child: Column(
          children: [
            //email
            TextFormField(
              controller: controller.email,
              validator: (value) => MyValidator.validateEmail(value),
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
                controller: controller.password,
                validator: (value) => MyValidator.validatePwd(value),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: "Password",
                    suffixIcon: GestureDetector(
                        onTap: () {
                          controller.isHidePassword.value =
                              !controller.isHidePassword.value;
                        },
                        child: Icon(
                          controller.isHidePassword.value
                              ? Iconsax.eye
                              : Iconsax.eye_slash,
                          color: Colors.black,
                        ))),
              ),
            ),
            SizedBox(
              height: Sizes.defaultSpace,
            ),

            //sign in
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    controller.signIn();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
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
