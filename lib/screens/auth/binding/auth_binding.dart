import 'package:get/get.dart';
import 'package:uitask/screens/auth/controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Authcontroller());
  }
}
