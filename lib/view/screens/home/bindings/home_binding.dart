import 'package:get/get.dart';
import 'package:yoori/data/repos/home/home_repo.dart';
import 'package:yoori/service/api_service.dart';
import 'package:yoori/view/screens/home/controller/home_controller.dart';

class HomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeRepo(apiService: Get.find<ApiService>()));
    Get.lazyPut(() => HomeController(repo: Get.find<HomeRepo>()));
  }
}