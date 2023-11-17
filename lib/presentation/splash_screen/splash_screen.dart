import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:trackit/presentation/splash_screen/controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
   SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SplashScreenPage')),
        body: Center(child:  LottieBuilder.asset(""),));
  }
}
