import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class LittleDivider extends StatelessWidget {
  const LittleDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 2.87,
      decoration: BoxDecoration(
        color: AppColors.whiteAccent,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
