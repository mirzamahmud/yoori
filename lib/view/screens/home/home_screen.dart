import 'package:flutter/material.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/view/widgets/bottom_navigation/custom_bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        bottomNavigationBar: CustomBottomNav(currentPage: 0),
      ),
    );
  }
}
