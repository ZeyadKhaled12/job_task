import '../../domain/entities/offer.dart';

class OfferModel extends Offer {
  const OfferModel(
      {required String date,
      required String title,
      required double salary,
      required double salaryOffer})
      : super(
            date: date, title: title, salary: salary, salaryOffer: salaryOffer);

  factory OfferModel.fromJson(Map<String, dynamic> json) => OfferModel(
      salary: json['salary'],
      title: json['title'],
      date: json['date'],
      salaryOffer: json['salary_offer']);
}
