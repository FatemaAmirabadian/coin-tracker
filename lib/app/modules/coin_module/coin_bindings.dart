import 'package:coin_tracker/app/modules/coin_module/coin_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class coinBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => coinController());
  }
}