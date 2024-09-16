import 'package:get/get.dart';
import 'package:yoori/route/app_pages.dart';
import 'package:yoori/view/screens/account/account_screen.dart';
import 'package:yoori/view/screens/cart/cart_screen.dart';
import 'package:yoori/view/screens/category/category_screen.dart';
import 'package:yoori/view/screens/home/home_screen.dart';
import 'package:yoori/view/screens/message/message_screen.dart';
import 'package:yoori/view/screens/splash/bindings/splash_binding.dart';
import 'package:yoori/view/screens/splash/splash_screen.dart';

class AppRoutes{

  static List<GetPage> routes = [
    GetPage(name: AppPages.splashScreen, page: () => const SplashScreen(), binding: SplashBinding()),
    GetPage(name: AppPages.homeScreen, page: () => const HomeScreen()),
    GetPage(name: AppPages.categoryScreen, page: () => const CategoryScreen()),
    GetPage(name: AppPages.messageScreen, page: () => const MessageScreen()),
    GetPage(name: AppPages.cartScreen, page: () => const CartScreen()),
    GetPage(name: AppPages.accountScreen, page: () => const AccountScreen())
  ];
}