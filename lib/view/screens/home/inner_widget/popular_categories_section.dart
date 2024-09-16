import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/view/screens/home/controller/home_controller.dart';
import 'package:get/get.dart';

class PopularCategoriesSection extends StatelessWidget {
  final HomeController controller;
  const PopularCategoriesSection({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 24),
          child: Text(
            "Popular Categories",
            style: GoogleFonts.instrumentSans(
                color: AppColors.colorBlack,
                fontSize: 20,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 100
          ),
          itemCount: controller.categories.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){},
            child: Container(
              height: Get.height, width: Get.width,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 64, width: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(controller.categories[index].categoryImage.toString()),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    controller.categories[index].categoryTitle.toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.livvic(
                      color: AppColors.colorBlack,
                      fontSize: 8,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
