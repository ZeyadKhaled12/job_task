import 'package:job_task/features/home/domain/entities/address.dart';

class AddressModel extends Address {
  const AddressModel({required String title, required String address})
      : super(title: title, address: address);

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      AddressModel(title: json['title'], address: json['address']);
}
