import 'package:flutter/services.dart';
import 'package:yoori/utils/color/app_colors.dart';

class AppUtils{

  static void systemUIOverlay(){
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.colorWhite,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.colorWhite,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light
    ));
  }

  static void deviceOrientation(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
  }
}