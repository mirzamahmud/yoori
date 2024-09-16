import 'package:yoori/data/models/home/home_model.dart';
import 'package:yoori/service/api_service.dart';

class HomeRepo{
  ApiService apiService;
  HomeRepo({required this.apiService});

  List<PopularCategories> categoriesData(){

    List<PopularCategories> categories = [
      PopularCategories(categoryImage: "assets/images/women.png", categoryTitle: "Women"),
      PopularCategories(categoryImage: "assets/images/curve.png", categoryTitle: "Curve"),
      PopularCategories(categoryImage: "assets/images/kids.png", categoryTitle: "Kids"),
      PopularCategories(categoryImage: "assets/images/beauty_and_health.png", categoryTitle: "Beauty and Health"),
      PopularCategories(categoryImage: "assets/images/winter.png", categoryTitle: "Winter"),
      PopularCategories(categoryImage: "assets/images/men.png", categoryTitle: "Men"),
      PopularCategories(categoryImage: "assets/images/dresses.png", categoryTitle: "Dresses"),
      PopularCategories(categoryImage: "assets/images/tops.png", categoryTitle: "Tops"),
      PopularCategories(categoryImage: "assets/images/jewelary.png", categoryTitle: "Accessories Jewelry"),
      PopularCategories(categoryImage: "assets/images/sports_wear.png", categoryTitle: "Sports Wear"),
    ];

    return categories;
  }

  List<Campaign> campaignData(){

    List<Campaign> campaigns = [
      Campaign(image: "assets/images/headphone.png", dateTime: "07d-05h-08m-11s"),
      Campaign(image: "assets/images/var.png", dateTime: "05d-06h-11m-15s"),
      Campaign(image: "assets/images/laptop.png", dateTime: "02d-10h-03m-05s"),
    ];

    return campaigns;
  }

  List<PreOrder> preOrderData(){

    List<PreOrder> preOrders = [
      PreOrder(image: "assets/images/iphone.png", title: "Iphone 14 Pro max", amount: "\$1,599"),
      PreOrder(image: "assets/images/lenovo.png", title: "Lenevo Laptop", amount: "\$1,999"),
      PreOrder(image: "assets/images/watch.png", title: "Smart Watch", amount: "\$120"),
    ];

    return preOrders;
  }

  List<FlashSale> flashSalesData(){

    List<FlashSale> flashSales = [
      FlashSale(image: "assets/images/mac.png", title: "Macbook Air", amount: "\$2,200", rating: "4.5"),
      FlashSale(image: "assets/images/router.png", title: "TP-Link Router", amount: "\$120", rating: "4.4"),
      FlashSale(image: "assets/images/smart_watch.png", title: "Smart Watch", amount: "\$320", rating: "4.7"),
    ];

    return flashSales;
  }
}