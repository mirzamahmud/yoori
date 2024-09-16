import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:get/get.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/utils/image/app_images.dart';
import 'package:yoori/view/screens/splash/controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    final controller = Get.find<SplashController>();
    controller.manageSession();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Center(
          child: SvgPicture.asset(AppImages.appLogo, height: 80, width: 80),
        ),
      ),
    );
  }
}
