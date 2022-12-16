import 'package:dartz/dartz.dart';
import 'package:job_task/features/home/domain/entities/category.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_use_case.dart';
import '../repository/base_home_repo.dart';

class GetCategoriesUc extends BaseUseCase<List<Category>>{

  final BaseHomeRepo baseHomeRepo;
  GetCategoriesUc(this.baseHomeRepo);

  @override
  Future<Either<Failure, List<Category>>> call() async{
    return await baseHomeRepo.getCategories();
  }

}