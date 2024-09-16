import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';
import 'package:get/get.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/utils/icon/app_icons.dart';
import 'package:yoori/utils/image/app_images.dart';
import 'package:yoori/view/screens/home/controller/home_controller.dart';
import 'package:yoori/view/screens/home/inner_widget/campaign_section.dart';
import 'package:yoori/view/screens/home/inner_widget/flash_sale_section.dart';
import 'package:yoori/view/screens/home/inner_widget/home_banner_section.dart';
import 'package:yoori/view/screens/home/inner_widget/popular_categories_section.dart';
import 'package:yoori/view/screens/home/inner_widget/pre_order_section.dart';
import 'package:yoori/view/widgets/bottom_navigation/custom_bottom_nav.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    final controller = Get.find<HomeController>();
    controller.getCategoriesData();
    controller.getCampaignData();
    controller.getPreOrderData();
    controller.getFlashSaleData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: GetBuilder<HomeController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.bgColor,
            body: Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: AppColors.colorWhite,
                  elevation: 0,
                  toolbarHeight: 70,
                  title: SvgPicture.asset(AppImages.appLogo),
                  titleSpacing: 24,
                  actions: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(AppIcons.searchIcon, height: 18, width: 18),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset(AppIcons.favoriteIcon, height: 18, width: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: IconButton(
                        onPressed: (){},
                        icon: Image.asset(AppIcons.menuIcon, height: 18, width: 18),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    padding: const EdgeInsetsDirectional.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// banner_section
                        const HomeBannerSection(),
                        const SizedBox(height: 32),
                        /// popular_categories_section
                        PopularCategoriesSection(controller: controller),
                        const SizedBox(height: 32),
                        /// campaign_section
                        CampaignSection(controller: controller),
                        const SizedBox(height: 32),
                        /// pre_order_section
                        PreOrderSection(controller: controller),
                        const SizedBox(height: 32),
                        /// flash_sale_section
                        FlashSaleSection(controller: controller)
                      ],
                    ),
                  ),
                )
              ],
            ),
            bottomNavigationBar: const CustomBottomNav(currentPage: 0),
          );
        }
      ),
    );
  }
}
