import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trackit/core/navigation/routes.dart';
import 'package:trackit/core/utils/debug_logger.dart';
import 'package:trackit/presentation/home_screen/binding.dart';
import 'package:trackit/presentation/signup/binding.dart';
import 'package:trackit/presentation/signup/signup_screen.dart';
import 'package:trackit/presentation/splash_screen/binding.dart';
import 'package:trackit/presentation/splash_screen/splash_screen.dart';

import '../../presentation/home_screen/hom_screen.dart';

class Pages {
  static bool _isLoggedIn = false;
  Pages() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        'User is currently signed out!'.logger;
        _isLoggedIn = true;
      }
    });
  }
  static List<GetPage> pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      bindings: [
        SplashScreenControllerBinding(),
      ],
    ),
    GetPage(
      name: Routes.signupScreen,
      page: () {
        //check if user is already signed in
        return const SignupScreen();
      },
      bindings: [
        SignupScreenControllerBinding(),
      ],
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () {
        if (_isLoggedIn) {
          return const HomeScreen();
        }
        //check if user is already signed in
        return const SignupScreen();
      },
      bindings: [
        HomeScreenControllerBinding(),
      ],
    ),
  ];
}
