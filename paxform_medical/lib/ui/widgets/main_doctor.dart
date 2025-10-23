import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/core.dart';

class MainDoctor extends StatelessWidget {
  const MainDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return SizedBox(
      height: 187,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 172,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller,
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MainDoctorCard(),
              ),
            ),
          ),

          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: WormEffect(
              dotHeight: 3,
              activeDotColor: Color(0XFF1C85E8),
              dotColor: Color(0XFF1C85E8).withValues(alpha: 0.2),
              dotWidth: 15,
              type: WormType.thinUnderground,
            ),
          ),
        ],
      ),
    );
  }
}

class MainDoctorCard extends StatelessWidget {
  const MainDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 172,
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primaryAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 62,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                AppSpacing.h16,
                CircleAvatar(radius: 18, child: Image.asset(AppAssets.drJason)),
                AppSpacing.h16,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      "Jason Smith",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0,
                        color: AppColors.primaryText,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "Dentist  ",
                          style: TextStyle(
                            letterSpacing: 0,
                            color: AppColors.secondaryText,
                          ),
                        ),
                        Container(
                          height: 3,
                          width: 3,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.secondaryText,
                          ),
                        ),
                        Text(
                          "  ABC Medical Center",
                          style: TextStyle(
                            letterSpacing: 0,
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.calendarTickIcon),
                        AppSpacing.h16,
                        Text(
                          "7 October 2021",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.clockIconWhite),
                        AppSpacing.h16,
                        Text(
                          "08:00 AM -10:00 AM",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                ),
                child: SvgPicture.asset(AppAssets.sendIcon),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
