import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/core.dart';
import '../ui.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: double.infinity),
              SizedBox(height: MediaQuery.of(context).padding.top),
              AppSpacing.v24,
              AppSpacing.v8,
              Text(
                "Medical Center",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  letterSpacing: 0.5,
                ),
              ),
              AppSpacing.v24,
              AppSpacing.v8,
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 0,
                  right: 0,
                  top: 10,
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  children: [
                    LittleDivider(),
                    AppSpacing.v16,
                    AppSearchBar(),
                    AppSpacing.v24,
                    MainDoctor(),
                    AppSpacing.v24,
                    BookAppointmentRow(),
                    AppSpacing.v24,
                    MiniHeaders(header: "Categories"),
                    AppSpacing.v24,
                    CategoryGrid(),
                    AppSpacing.v24,
                    MiniHeaders(header: "Nearest Doctors"),
                    AppSpacing.v24,
                    DoctorGrid(),
                    AppSpacing.v24,
                    MiniHeaders(header: "Nearest Medical Center"),
                    AppSpacing.v24,
                    HospitalGrid(),
                  ],
                ),
              ),
              AppSpacing.v24,
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFF0C68C0),
                ),
                child: SvgPicture.asset(AppAssets.checkShieldIcon),
              ),
              AppSpacing.v24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Text(
                  "Information shared via forms is encrypted and can only be viewed by those you share it with.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: AppColors.white,

                    fontSize: 16,
                  ),
                ),
              ),
              AppSpacing.v24,
              AppSpacing.v24,
              AppSpacing.v24,
            ],
          ),
        ),
      ),
    );
  }
}
