import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/base_use_case.dart';

import '../entities/address.dart';
import '../repository/base_home_repo.dart';

class GetAddressesUc extends BaseUseCase<List<Address>>{

  final BaseHomeRepo baseHomeRepo;
  GetAddressesUc(this.baseHomeRepo);

  @override
  Future<Either<Failure, List<Address>>> call() async{
    return await baseHomeRepo.getAddresses();
  }

}