import 'package:get/get.dart';
import 'package:yoori/service/api_service.dart';

class DependencyInjectionHelper{

  static void initDependency() {
    Get.lazyPut(() => ApiService());
  }
}