import '../core/core.dart';

class DrModel {
  final String name, profession, experience, image;
  final double averageRating;
  final int numOfReviews;

  DrModel({
    required this.name,
    required this.profession,
    required this.experience,
    required this.image,
    required this.averageRating,
    required this.numOfReviews,
  });

  static List<DrModel> appDoctors = [
    DrModel(
      name: "Clark Mark",
      profession: "Dentist",
      experience: "4 Years",
      image: AppAssets.drClark,
      averageRating: 4.8,
      numOfReviews: 40,
    ),
    DrModel(
      name: "White Mond",
      profession: "Neurologist",
      image: AppAssets.drWhite,
      experience: "15 Years",
      averageRating: 4.9,
      numOfReviews: 440,
    ),
    DrModel(
      name: "Wilson Herwitz",
      profession: "General Practitioner",
      experience: "10 Years",
      image: AppAssets.drWilson,
      averageRating: 4.9,
      numOfReviews: 440,
    ),
  ];
}
