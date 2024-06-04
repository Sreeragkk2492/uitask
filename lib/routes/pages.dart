import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:uitask/routes/routes.dart';
import 'package:uitask/screens/auth/binding/auth_binding.dart';
import 'package:uitask/screens/auth/login/login_screen.dart';
import 'package:uitask/screens/auth/signup/signup_screen.dart';
import 'package:uitask/screens/auth/signupwithotp/signup_otp_screen.dart';
import 'package:uitask/screens/home/binding/home_binding.dart';
import 'package:uitask/screens/home/home_screen.dart';
import 'package:uitask/screens/splash/splash_screen.dart';

class GetPages {
  static const INITAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => const SplashScreen()),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: AuthBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
        name: Routes.OTPSCREEN,
        page: () => SignupWithOtpScreen(),
        transition: Transition.fade),
    GetPage(
        name: Routes.SIGNUP,
        page: () => SignUpScreen(),
        transition: Transition.fade),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
      transition: Transition.fade,
    ),
  ];
}
