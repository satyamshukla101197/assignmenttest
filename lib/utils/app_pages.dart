import 'package:get/get.dart';

import '../screens/home_page_screen/home_page_screen.dart';
import '../screens/home_page_screen/homepage_binding.dart';
import '../screens/order_medicine_screen/order_medicine_binding.dart';
import '../screens/order_medicine_screen/order_medicine_screen.dart';
import '../screens/plan_subacription_screen/plan_sub_binding.dart';
import '../screens/plan_subacription_screen/plan_subacription_screen.dart';
import 'app_route.dart';


class AppPages {
  static const initialRoute = AppRoutes.home;
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => HomePageScreen(), binding: HomePageBinding()),

    GetPage(name: AppRoutes.plan, page: () => PlanSubScreen(), binding: PlanSubBinding()),
    GetPage(name: AppRoutes.order, page: () => OrderMedicineScreen(), binding: OrderMedicineBinding()),
  ];
}
