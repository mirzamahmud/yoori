import 'package:get/get.dart';
import 'package:yoori/data/models/home/home_model.dart';
import 'package:yoori/data/repos/home/home_repo.dart';

class HomeController extends GetxController{
  HomeRepo repo;
  HomeController({required this.repo});

  List<PopularCategories> categories = [];
  List<Campaign> campaigns = [];
  List<PreOrder> preOrders = [];
  List<FlashSale> flashSales = [];

  void getCategoriesData(){
    categories.addAll(repo.categoriesData());
    update();
  }

  void getCampaignData() {
    campaigns.addAll(repo.campaignData());
    update();
  }

  void getPreOrderData() {
    preOrders.addAll(repo.preOrderData());
    update();
  }

  void getFlashSaleData() {
    flashSales.addAll(repo.flashSalesData());
    update();
  }
}