import 'package:equatable/equatable.dart';

class Offer extends Equatable {
  final String date;
  final String title;
  final double salary;
  final double salaryOffer;

  const Offer({required this.date,
    required this.title,
    required this.salary,
    required this.salaryOffer});

  @override
  List<Object> get props => [date, title, salary, salaryOffer];
}
