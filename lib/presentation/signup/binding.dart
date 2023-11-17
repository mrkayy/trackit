import 'package:get/get.dart';
import 'package:trackit/presentation/signup/controller.dart';

class SignupScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenController());
  }
}
