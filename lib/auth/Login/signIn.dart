import 'package:breadtalk/auth/Login/widgets/loginForm.dart';
import 'package:breadtalk/auth/Login/widgets/loginHeader.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
              LoginHeader(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: LoginForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
