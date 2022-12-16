import 'package:dartz/dartz.dart';
import 'package:job_task/core/error/failure.dart';
import 'package:job_task/core/usecase/base_use_case.dart';
import 'package:job_task/features/home/domain/entities/offer.dart';
import 'package:job_task/features/home/domain/repository/base_home_repo.dart';

class GetOffersUc extends BaseUseCase<List<Offer>>{

  final BaseHomeRepo baseHomeRepo;
  GetOffersUc(this.baseHomeRepo);

  @override
  Future<Either<Failure, List<Offer>>> call() async{
    return await baseHomeRepo.getOffers();
  }

}