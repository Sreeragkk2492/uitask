import 'package:get/get.dart';
import 'package:uitask/routes/routes.dart';

checkSplashOver() async {
  Future.delayed(const Duration(seconds: 3), () => Get.offNamed(Routes.LOGIN));
}
