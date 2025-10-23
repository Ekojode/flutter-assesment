import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/core.dart';

class BookAppointmentRow extends StatelessWidget {
  const BookAppointmentRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: BookAppointmentCard(
              icon: AppAssets.doctorAppointmentIcon,
              title: "Book Doctor Apppointment",
              subTitle: "Find a Doctor or Specialist",
              color: AppColors.cardBgPurple,
            ),
          ),
          AppSpacing.h16,
          Expanded(
            child: BookAppointmentCard(
              title: "Book Hospital Apppointment",
              subTitle: "Locate nearby hospital to visit",
              icon: AppAssets.hospitalAppointmentIcon,
              color: AppColors.cardBgGreen,
            ),
          ),
        ],
      ),
    );
  }
}

class BookAppointmentCard extends StatelessWidget {
  final Color color;
  final String icon, title, subTitle;

  const BookAppointmentCard({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon, height: 42, width: 42),
          SizedBox(width: double.infinity),
          Spacer(),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 0.2,
              color: AppColors.primaryText,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: AppColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}
