import 'dart:async';

import 'package:get/get.dart';
import 'package:yoori/route/app_pages.dart';

class SplashController extends GetxController{
  SplashController();

  void manageSession(){
    Timer(const Duration(seconds: 3), (){
      Get.offAllNamed(AppPages.homeScreen);
    });
  }
}