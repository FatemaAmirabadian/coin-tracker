import '../../app/modules/coin_module/coin_bindings.dart';
import '../../app/modules/coin_module/coin_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';
/**
 * GetX Generator - fb.com/htngu.99
 * */

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.COIN,
      page: () => coinPage(),
      binding: coinBinding(),
    ),
  ];
}