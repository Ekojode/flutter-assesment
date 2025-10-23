import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/core.dart';
import '../../data/data.dart';

class DoctorCard extends StatefulWidget {
  final DrModel doctor;
  final bool likeStatus;
  const DoctorCard({super.key, required this.doctor, required this.likeStatus});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    isLiked = widget.likeStatus;
  }

  void updateLike() {
    isLiked = !isLiked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 1.5,
        surfaceTintColor: Colors.transparent,
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(14),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 21,
                    child: Image.asset(widget.doctor.image),
                  ),
                  AppSpacing.h8,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.doctor.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0,
                        ),
                      ),
                      Text(
                        "${widget.doctor.profession} | ${widget.doctor.experience}",
                        style: TextStyle(color: AppColors.secondaryText),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.doctor.averageRating.toString(),
                            style: TextStyle(
                              color: Color(0XFF33384B),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                            ),
                          ),
                          AppSpacing.h4,
                          SvgPicture.asset(AppAssets.starIcon),
                          AppSpacing.h8,
                          Text(
                            "${widget.doctor.numOfReviews} Reviews",
                            style: TextStyle(color: AppColors.secondaryText),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: updateLike,
                    borderRadius: BorderRadius.circular(50),
                    child: isLiked
                        ? Icon(Icons.favorite_rounded, color: AppColors.like)
                        : Icon(
                            Icons.favorite_outline_rounded,
                            color: AppColors.ash,
                          ),
                  ),
                ],
              ),
              AppSpacing.v16,
              Row(
                children: [
                  SvgPicture.asset(AppAssets.calendarIcon),
                  AppSpacing.h8,
                  Text("Tomorrow", style: TextStyle(color: AppColors.primary)),
                  AppSpacing.h24,
                  SvgPicture.asset(AppAssets.clockIcon),
                  AppSpacing.h8,
                  Text(
                    "10:30am-05:00pm",
                    style: TextStyle(color: AppColors.primary),
                  ),
                ],
              ),
              AppSpacing.v24,
              Divider(height: 1, color: Color(0XFFF2F4F5)),
              AppSpacing.v24,
              Row(
                children: [
                  SvgPicture.asset(AppAssets.locationIcon),
                  AppSpacing.h8,
                  Text(
                    "Horizon Medical Center",
                    style: TextStyle(color: AppColors.success),
                  ),
                  Spacer(),
                  Text(
                    "2km Away",
                    style: TextStyle(color: AppColors.secondaryText),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorGrid extends StatelessWidget {
  const DoctorGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final doctors = DrModel.appDoctors;

    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: doctors.length,
      itemBuilder: (context, i) {
        return DoctorCard(doctor: doctors[i], likeStatus: i % 2 == 1);
      },
    );
  }
}
