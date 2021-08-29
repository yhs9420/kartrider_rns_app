import 'package:get/get.dart';
import 'package:kartrider_rns/src/controllers/app_controller.dart';
import 'package:kartrider_rns/src/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //Get.put(AppController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
