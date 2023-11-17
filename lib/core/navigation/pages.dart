import 'package:get/get.dart';
import 'package:trackit/core/navigation/routes.dart';
import 'package:trackit/presentation/splash_screen/binding.dart';
import 'package:trackit/presentation/splash_screen/splash_screen.dart';

class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashScreenBinding(),
      ],
    ),
  ];
}
