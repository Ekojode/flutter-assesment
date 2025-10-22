import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../ui.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: double.infinity),
              AppSpacing.v20,
              Text(
                "Medical Center",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  letterSpacing: 0.5,
                ),
              ),
              AppSpacing.v20,
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 50,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  children: [LittleDivider(), AppSpacing.v16, AppSearchBar()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
