import 'package:flutter/material.dart';

import '../../core/core.dart';

class MiniHeaders extends StatelessWidget {
  final String header;
  const MiniHeaders({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Text(
            header,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              color: AppColors.primaryText,
            ),
          ),
          Spacer(),
          Text(
            "See All",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              color: AppColors.primary,
            ),
          ),
          AppSpacing.h8,
          Icon(Icons.arrow_forward_ios, color: AppColors.primary, size: 16),
        ],
      ),
    );
  }
}
