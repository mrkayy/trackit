import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackit/presentation/signup/controller.dart';

class SignupScreen extends GetView<SignupScreenController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                onPressed: controller.signInWithGoogle,
                child: const Text(
                  'Signin With Google',
                  style: TextStyle(fontFamily: "SourceSansPro"),
                )),
            const TextButton(
                onPressed: null,
                child: Text(
                  'Signin With Github',
                  style: TextStyle(fontFamily: "SourceSansPro"),
                )),
          ],
        ),
      ),
    );
  }
}
