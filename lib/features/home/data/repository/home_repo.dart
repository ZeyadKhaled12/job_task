import 'package:dartz/dartz.dart';
import 'package:job_task/core/error/failure.dart';
import 'package:job_task/features/home/domain/entities/address.dart';
import 'package:job_task/features/home/domain/entities/category.dart';
import 'package:job_task/features/home/domain/entities/deal.dart';
import 'package:job_task/features/home/domain/entities/offer.dart';
import 'package:job_task/features/home/domain/repository/base_home_repo.dart';

import '../../../../core/error/exception.dart';
import '../datasource/home_remote_data_source.dart';

class HomeRepo extends BaseHomeRepo{

  BaseHomeRemoteDataSource baseHomeRemoteDataSource;
  HomeRepo(this.baseHomeRemoteDataSource);

  @override
  Future<Either<Failure, List<Address>>> getAddresses() async{
    final result = await baseHomeRemoteDataSource.getAddresses();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Category>>> getCategories() async{
    final result = await baseHomeRemoteDataSource.getCategories();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Deal>>> getDeals() async{
    final result = await baseHomeRemoteDataSource.getDeals();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Offer>>> getOffers() async{
    final result = await baseHomeRemoteDataSource.getOffers();
    try{
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}