import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void onInit() {
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
