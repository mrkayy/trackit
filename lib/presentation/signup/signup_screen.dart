import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trackit/presentation/signup/controller.dart';

class SignupScreen extends GetView<SignupScreenController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        padding: EdgeInsets.symmetric(horizontal: 28.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [


            
            TextButton(
              onPressed: controller.signInWithGoogle,
              child: const Text(
                'Signin With Google',
                style: TextStyle(fontFamily: "SourceSansPro"),
              ),
            ),
          const  TextButton(
              onPressed: null,
              child: Text(
                'Signin With Github',
                style: TextStyle(fontFamily: "SourceSansPro"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
