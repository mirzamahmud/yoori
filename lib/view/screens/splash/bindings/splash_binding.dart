import 'package:get/get.dart';
import 'package:yoori/view/screens/splash/controller/splash_controller.dart';

class SplashBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}