import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.backgroundAccent,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: EdgeInsets.symmetric(vertical: 24),
                border: InputBorder.none,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: SvgPicture.asset(AppAssets.searchIcon),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: SizedBox(
                    height: 24,
                    child: SvgPicture.asset(AppAssets.settingsIcon, height: 24),
                  ),
                ),
              ),
            ),
          ),
        ),
        AppSpacing.h8,
        Container(
          width: 60,
          height: 64,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColors.backgroundAccent,
          ),
          child: SvgPicture.asset(AppAssets.mapIcon),
        ),
      ],
    );
  }
}
