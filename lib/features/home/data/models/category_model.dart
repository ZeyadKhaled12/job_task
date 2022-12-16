import 'package:job_task/features/home/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({required String title}) : super(title: title);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      CategoryModel(title: json['title']);
}
