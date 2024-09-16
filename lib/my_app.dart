import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoori/route/app_pages.dart';
import 'package:yoori/route/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yoori",
      defaultTransition: Transition.noTransition,
      initialRoute: AppPages.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}
