import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final String title;
  final String address;

  const Address({required this.title, required this.address});

  @override
  List<Object> get props => [title, address];

}