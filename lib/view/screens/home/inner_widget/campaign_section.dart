import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/view/screens/home/controller/home_controller.dart';

class CampaignSection extends StatelessWidget {
  final HomeController controller;
  const CampaignSection({required this.controller, super.key});

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
                "Campaign",
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
          itemCount: controller.campaigns.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 164,
            crossAxisSpacing: 6,
            mainAxisSpacing: 0
          ),
          itemBuilder: (context, index){
            return Container(
              width: Get.width,
              height: Get.height,
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    height: 132,
                    width: Get.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(controller.campaigns[index].image.toString()),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          height: 20, width: 20,
                          margin: const EdgeInsetsDirectional.only(top: 12, end: 12),
                          decoration: BoxDecoration(
                              color: AppColors.colorWhite.withOpacity(0.6),
                              shape: BoxShape.circle
                          ),
                          child: const Icon(Icons.arrow_forward, color: AppColors.colorBlack, size: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 32, width: Get.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 3, horizontal: 6),
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite,
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
                  )
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
