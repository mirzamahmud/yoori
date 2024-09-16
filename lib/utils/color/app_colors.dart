import 'package:flutter/material.dart';

class AppColors{

  static const Color bgColor = Color(0xffFFFFFF);

  static const Color colorWhite = Color(0xffFFFFFF);
  static Color colorWhite_60 = const Color(0xffFFFFFF).withOpacity(0.6);

  static const Color colorBlack = Color(0xff000000);
  static const Color colorBlack_1 = Color(0xff333333);

  static const Color colorGrey = Color(0xffD9D9D9);

  static const Color colorYellow = Color(0xffFEBD0D);
  static const Color colorYellow_1 = Color(0xffFFE08B);

  static const Color colorRed = Color(0xffFE0D0D);
  
  static List <BoxShadow> bottomNavShadow = [
    BoxShadow(
        color: colorBlack.withOpacity(0.08),
        spreadRadius: 0,
        blurRadius: 16.78,
        offset: const Offset(0, -2.5)
    )
  ];

  static List<BoxShadow> justForYouCardShadow = [
    BoxShadow(color: colorBlack.withOpacity(0.20), offset: const Offset(2.54, 1.69), blurRadius: 15.9, spreadRadius: 0),
    BoxShadow(color: colorBlack.withOpacity(0.11), offset: const Offset(3.05, 2.03), blurRadius: 19.12, spreadRadius: 0)
  ];

  static List<BoxShadow> flashSaleCardShadow = [
    BoxShadow(color: colorBlack.withOpacity(0.20), offset: const Offset(1.64, 1.09), blurRadius: 10.29, spreadRadius: 0),
  ];

  static List<BoxShadow> preOderCardShadow = [
    BoxShadow(color: colorBlack.withOpacity(0.20), offset: const Offset(1.68, 1.12), blurRadius: 10.53, spreadRadius: 0),
  ];

  static List<BoxShadow> campaignCardShadow = [
    BoxShadow(color: colorBlack.withOpacity(0.25), offset: const Offset(1.35, 1.35), blurRadius: 10.50, spreadRadius: 0),
  ];
}