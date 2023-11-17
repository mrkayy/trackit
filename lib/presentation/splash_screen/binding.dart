import 'package:get/get.dart';
import 'package:trackit/presentation/splash_screen/controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}
