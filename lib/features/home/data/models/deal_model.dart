import 'package:job_task/features/home/domain/entities/deal.dart';

class DealModel extends Deal {
  const DealModel(
      {required bool isFavourite,
      required String title,
      required int pieces,
      required int minutes,
      required double salary,
      required double offers})
      : super(
            isFavourite: isFavourite,
            title: title,
            pieces: pieces,
            minutes: minutes,
            salary: salary,
            offers: offers);

  factory DealModel.fromJson(Map<String, dynamic> json) => DealModel(
      title: json['title'],
      pieces: json['pieces'],
      minutes: json['minutes'],
      salary: json['salary'],
      isFavourite: json['is_fav'],
      offers: json['salary_offer']);
}
