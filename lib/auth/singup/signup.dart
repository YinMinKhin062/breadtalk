import 'package:flutter/material.dart';

import 'widgets/signUpForm.dart';
import 'widgets/signUpHeader.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
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
      ),
    );
  }
}
