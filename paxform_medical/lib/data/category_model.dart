import '../core/core.dart';

class CategoryModel {
  final String title;
  final String image;

  CategoryModel({required this.title, required this.image});

  static List<CategoryModel> appCategories = [
    CategoryModel(title: "General", image: AppAssets.stethoscopeIcon),
    CategoryModel(title: "Heart", image: AppAssets.heartIcon),
    CategoryModel(title: "Dentist", image: AppAssets.teethIcon),
    CategoryModel(title: "Skin", image: AppAssets.dermisIcon),
    CategoryModel(title: "Stomach", image: AppAssets.stomachIcon),
    CategoryModel(title: "Lung", image: AppAssets.lungsIcon),
    CategoryModel(title: "Bone", image: AppAssets.jointIcon),
    CategoryModel(title: "E.T.N", image: AppAssets.earIcon),
  ];
}
