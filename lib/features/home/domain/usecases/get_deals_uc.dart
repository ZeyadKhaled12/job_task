import 'package:dartz/dartz.dart';
import 'package:job_task/features/home/domain/entities/deal.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_use_case.dart';
import '../repository/base_home_repo.dart';

class GetDealsUc extends BaseUseCase<List<Deal>>{

  final BaseHomeRepo baseHomeRepo;
  GetDealsUc(this.baseHomeRepo);

  @override
  Future<Either<Failure, List<Deal>>> call() async{
    return await baseHomeRepo.getDeals();
  }

}