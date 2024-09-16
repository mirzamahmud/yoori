import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/view/screens/home/controller/home_controller.dart';

class PreOrderSection extends StatelessWidget {
  final HomeController controller;
  const PreOrderSection({required this.controller,super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pre Order",
                style: GoogleFonts.instrumentSans(
                    color: AppColors.colorBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),
              ),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    overlayColor: AppColors.colorGrey,
                    backgroundColor: AppColors.colorWhite
                ),
                child: Row(
                  children: [
                    Text(
                      "View more",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.instrumentSans(
                          color: AppColors.colorBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward_ios, size: 10)
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisExtent: 220
          ),
          itemCount: controller.preOrders.length,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    controller.preOrders[index].image.toString(),
                    width: Get.width,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 32, width: Get.width,
                      alignment: Alignment.center,
                      padding: const EdgeInsetsDirectional.symmetric(vertical: 3, horizontal: 6),
                      decoration: BoxDecoration(
                          color: AppColors.colorBlack.withOpacity(0.19),
                          boxShadow: AppColors.campaignCardShadow,
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 18, width: 24,
                            color: AppColors.colorBlack_1,
                            alignment: Alignment.center,
                            child: Text(
                              "07d",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  color: AppColors.colorWhite,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            height: 18, width: 24,
                            color: AppColors.colorBlack_1,
                            alignment: Alignment.center,
                            child: Text(
                              "05h",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  color: AppColors.colorWhite,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            height: 18, width: 24,
                            color: AppColors.colorBlack_1,
                            alignment: Alignment.center,
                            child: Text(
                              "08m",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  color: AppColors.colorWhite,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            height: 18, width: 24,
                            color: AppColors.colorBlack_1,
                            alignment: Alignment.center,
                            child: Text(
                              "11s",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  color: AppColors.colorWhite,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 4),
              Flexible(
                child: Text(
                  controller.preOrders[index].title.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.instrumentSans(
                    color: AppColors.colorBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                controller.preOrders[index].amount.toString(),
                style: GoogleFonts.instrumentSans(
                  color: AppColors.colorRed,
                  fontWeight: FontWeight.w700,
                  fontSize: 10
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
