import 'package:get/get.dart';
import 'package:kartrider_rns/src/bindings/home_binding.dart';
import 'package:kartrider_rns/src/screens/home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final List<GetPage> routes = [
    GetPage(name: AppRoutes.HOME, page: () => HomeScreen()),
  ];
}
