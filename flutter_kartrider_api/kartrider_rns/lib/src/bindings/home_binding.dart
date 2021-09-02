import 'package:get/get.dart';
import 'package:kartrider_rns/src/controllers/home_controller.dart';
import 'package:kartrider_rns/src/controllers/rider_name_search_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //Get.put(AppController());
    //Get.lazyPut<HomeController>(() => HomeController());
    Get.put(HomeController());
    Get.put(RiderNameSearchController());
  }
}
