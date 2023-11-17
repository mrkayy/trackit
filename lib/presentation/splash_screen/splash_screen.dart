import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:trackit/core/contants/image_constants.dart';
import 'package:trackit/core/navigation/routes.dart';
import 'package:trackit/core/themes/app_color.dart';
import 'package:trackit/presentation/splash_screen/controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().white,
      body: Center(
        child: LottieBuilder.asset(ImageConstant.lottieAppIcon,
            controller: controller.animationController,
            animate: true,
            repeat: true,
            height: 315.h,
            width: 315.w, onLoaded: (v) {
          Future.delayed(const Duration(seconds: 2), () {
            Get.toNamed(Routes.homeScreen);
          });
        }),
      ),
    );
  }
}
