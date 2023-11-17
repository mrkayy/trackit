import 'package:get/get.dart';
import 'package:trackit/presentation/splash_screen/controller.dart';

class SplashScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenController());
  }
}
