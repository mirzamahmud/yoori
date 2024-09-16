class HomeModel{
  final List<Banner>? banners;
  final List<PopularCategories>? popularCategories;
  final List<PopularCategories>? campaigns;
  final List<PopularCategories>? preOrders;
  final List<PopularCategories>? flashSales;
  final List<PopularCategories>? justForYou;

  HomeModel({this.banners, this.popularCategories, this.campaigns, this.preOrders, this.flashSales, this.justForYou});
}

class Banner{

}

class PopularCategories{
  final String? categoryImage;
  final String? categoryTitle;

  PopularCategories({this.categoryImage, this.categoryTitle});
}

class Campaign{
  final String? image;
  final String? dateTime;

  Campaign({this.image, this.dateTime});
}

class PreOrder{
  final String? image;
  final String? dateTime;
  final String? title;
  final String? amount;

  PreOrder({this.image, this.dateTime, this.title, this.amount});
}

class FlashSale{
  final String? image;
  final String? dateTime;
  final String? title;
  final String? amount;
  final String? rating;

  FlashSale({this.image, this.dateTime, this.title, this.amount, this.rating});
}

class JustForYou{

}