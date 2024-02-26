import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coin_tracker/app/modules/coin_module/coin_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class coinPage extends GetView<coinController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('coin Page')),
      body: Container(
        child: Obx(()=>Container(child: Text(controller.obj),)),
      ),
    );
  }
}
