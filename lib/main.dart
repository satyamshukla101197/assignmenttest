import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview/utils/app_pages.dart';
import 'package:interview/utils/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
     );
  }
}


