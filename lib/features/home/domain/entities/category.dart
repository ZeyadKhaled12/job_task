import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String title;

  const Category({required this.title});

  @override
  List<Object> get props => [title];
}