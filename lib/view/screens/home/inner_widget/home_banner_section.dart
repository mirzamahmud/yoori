import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:yoori/utils/color/app_colors.dart';
import 'package:yoori/utils/icon/app_icons.dart';
import 'package:yoori/utils/image/app_images.dart';

class HomeBannerSection extends StatefulWidget {
  const HomeBannerSection({super.key});

  @override
  State<HomeBannerSection> createState() => _HomeBannerSectionState();
}

class _HomeBannerSectionState extends State<HomeBannerSection> {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 260,
      child: PageView.builder(
        controller: pageController,
        itemCount: 4,
        allowImplicitScrolling: true,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xffFFF2E9),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              /// content text and button
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "NEW ARRIVALS",
                        style: GoogleFonts.inter(
                            color: const Color(0xffA3A0A0),
                            fontWeight: FontWeight.w500,
                            fontSize: 10
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(
                                    text: "STYLISH & ",
                                    style: GoogleFonts.inter(
                                        color: AppColors.colorBlack,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    )
                                ),
                                TextSpan(
                                    text: "SMART",
                                    style: GoogleFonts.inter(
                                        color: AppColors.colorYellow,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    )
                                )
                              ]
                          )
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "SUNGLASSES",
                        style: GoogleFonts.inter(
                            color: AppColors.colorBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 112,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 6, horizontal: 12),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: AppColors.colorBlack
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Shop Now",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                    color: AppColors.colorWhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              const SizedBox(width: 8),
                              SvgPicture.asset(AppIcons.arrowIcon)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              /// image
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10, end: 0),
                  child: Image.asset(AppImages.bannerImage),
                ),
              ),
              /// indicator
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SmoothPageIndicator(
                    controller: pageController,  // PageController
                    count:  4,
                    effect:  WormEffect(
                      dotHeight: 5,
                      dotWidth: 40,
                      dotColor: AppColors.colorBlack.withOpacity(0.6),
                      activeDotColor: AppColors.colorYellow
                    ),  // your preferred effect
                    onDotClicked: (index){}
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
