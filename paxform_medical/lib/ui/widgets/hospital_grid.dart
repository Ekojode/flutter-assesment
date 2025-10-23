import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class HospitalCard extends StatefulWidget {
  const HospitalCard({super.key});

  @override
  State<HospitalCard> createState() => _HospitalCardState();
}

class _HospitalCardState extends State<HospitalCard> {
  bool isLiked = false;

  updateLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        elevation: 1.5,
        margin: EdgeInsets.only(right: 16, bottom: 2),
        surfaceTintColor: Colors.transparent,
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(AppAssets.hospital),
                  ),
                  Positioned(
                    right: 7,
                    top: 7,
                    child: InkWell(
                      onTap: updateLike,
                      child: Container(
                        height: 30,
                        width: 31.46,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),

                          color: AppColors.primaryText.withValues(alpha: 0.3),
                        ),
                        child: isLiked
                            ? Icon(
                                Icons.favorite_rounded,
                                color: AppColors.like,
                                size: 17.46,
                              )
                            : Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                                size: 17.46,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              AppSpacing.v8,
              Text(
                "Tyna Medical Center",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "Udomsuk, Bang Na",
                style: TextStyle(color: AppColors.secondaryText),
              ),
              AppSpacing.v8,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "+2K Review",
                    style: TextStyle(color: AppColors.secondaryText),
                  ),
                  Spacer(),
                  Text(
                    "4.8",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF33384B),
                    ),
                  ),
                  AppSpacing.h4,
                  SvgPicture.asset(AppAssets.starIcon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HospitalGrid extends StatelessWidget {
  const HospitalGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return HospitalCard();
        },
      ),
    );
  }
}
