import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'order_medicine_controller.dart';



class OrderMedicineBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OrderMedicineController>(
          () =>  OrderMedicineController(),
    );
  }
}