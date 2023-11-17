import 'package:get/get.dart';
import 'package:trackit/presentation/home_screen/controller.dart';

class HomeScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
