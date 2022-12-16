
import 'package:dartz/dartz.dart';
import 'package:job_task/features/home/domain/entities/address.dart';
import 'package:job_task/features/home/domain/entities/category.dart';
import 'package:job_task/features/home/domain/entities/deal.dart';
import 'package:job_task/features/home/domain/entities/offer.dart';

import '../../../../core/error/failure.dart';

abstract class BaseHomeRepo{

  Future<Either<Failure, List<Address>>> getAddresses();
  Future<Either<Failure, List<Category>>> getCategories();
  Future<Either<Failure, List<Deal>>> getDeals();
  Future<Either<Failure, List<Offer>>> getOffers();

}