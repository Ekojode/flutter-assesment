import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/core.dart';
import '../../data/data.dart';

class CategoryWidget extends StatelessWidget {
  final String image, title;

  const CategoryWidget({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72.5,
      padding: EdgeInsets.all(10),
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.backgroundAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(image, height: 34, width: 34),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: AppColors.primaryText,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryModel.appCategories;
    final crossAxisCount = MediaQuery.of(context).size.width > 350 ? 4 : 3;
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryWidget(title: category.title, image: category.image);
        },
      ),
    );
  }
}
