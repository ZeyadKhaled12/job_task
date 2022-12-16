import 'package:equatable/equatable.dart';

class Deal extends Equatable {
  final bool isFavourite;
  final String title;
  final int pieces;
  final int minutes;
  final double salary;
  final double offers;

  const Deal({required this.isFavourite,
    required this.title,
    required this.pieces,
    required this.minutes,
    required this.salary,
    required this.offers});

  @override
  List<Object> get props =>
      [isFavourite, title, pieces, minutes, salary, offers,];

}
