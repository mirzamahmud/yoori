import 'package:flutter/material.dart';
import 'package:yoori/data/models/bottom_nav/bottom_nav_model.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/utils/icon/app_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNav extends StatefulWidget {

  final int currentPage;
  const CustomBottomNav({required this.currentPage, super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  
  List<BottomNavModel> itemList = [
    BottomNavModel(icon: AppIcons.homeIcon, text: "Home"),
    BottomNavModel(icon: AppIcons.categoryIcon, text: "Category"),
    BottomNavModel(icon: AppIcons.messageIcon, text: "Message"),
    BottomNavModel(icon: AppIcons.cartIcon, text: "Cart"),
    BottomNavModel(icon: AppIcons.accountIcon, text: "Account")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 24),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
          boxShadow: AppColors.bottomNavShadow
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(itemList.length, (index) => IconButton(
            onPressed: () => changePage(index),
            icon: Container(
              color: Colors.transparent,
              alignment: Alignment.center,
              //padding: index == (itemList.length - 1) ? EdgeInsets.zero : const EdgeInsetsDirectional.only(end: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(itemList[index].icon, color: AppColors.colorRed, height: 20, width: 20),
                  const SizedBox(height: 8),
                  Text(
                    itemList[index].text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.instrumentSans(
                      color: AppColors.colorBlack,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            )
          )),
        ),
      ),
    );
  }

  changePage(int index) {
    
  }
}
