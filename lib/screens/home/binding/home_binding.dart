import 'package:get/get.dart';
import 'package:uitask/screens/home/controller/home_screen_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
