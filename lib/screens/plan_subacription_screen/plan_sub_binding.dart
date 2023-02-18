import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:interview/screens/plan_subacription_screen/plan_sub_controller.dart';



class PlanSubBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PlanSubController>(
          () =>  PlanSubController(),
    );
  }
}