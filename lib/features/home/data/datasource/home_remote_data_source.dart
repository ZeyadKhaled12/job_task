import 'dart:convert';

import '../../../../core/error/exception.dart';
import '../../../../core/network/error_message_model.dart';
import '../../../../core/utils/assets_manager.dart';
import '../models/address_model.dart';
import '../models/category_model.dart';
import '../models/deal_model.dart';
import '../models/offer_model.dart';
import 'package:flutter/services.dart' show rootBundle;

abstract class BaseHomeRemoteDataSource {
  Future<List<AddressModel>> getAddresses();

  Future<List<CategoryModel>> getCategories();

  Future<List<DealModel>> getDeals();

  Future<List<OfferModel>> getOffers();
}

class HomeRemoteDataSource extends BaseHomeRemoteDataSource {
  @override
  Future<List<AddressModel>> getAddresses() async {
    final response = await jsonDecode(await rootBundle.loadString(JsonAssets.addresses));
    try {
      return List<AddressModel>.from(
          (response as List).map((e) => AddressModel.fromJson(e)));
    } catch (e) {
      throw const ServerException(ErrorMessageModel(
          statusCode: 400, statusMessage: 'Address Error', success: false));
    }
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await jsonDecode(await rootBundle.loadString(JsonAssets.categories));
    try{
      return List<CategoryModel>.from(
          (response as List).map((e) => CategoryModel.fromJson(e)));
    }catch(e){
      throw const ServerException(ErrorMessageModel(
          statusCode: 400, statusMessage: 'Categories Error', success: false));
    }

  }

  @override
  Future<List<DealModel>> getDeals() async {
    final response = await jsonDecode(await rootBundle.loadString(JsonAssets.deals));
    try{
      return List<DealModel>.from(
          (response as List).map((e) => DealModel.fromJson(e)));
    }catch(e){
      throw const ServerException(ErrorMessageModel(
          statusCode: 400, statusMessage: 'Deals Error', success: false));
    }
  }

  @override
  Future<List<OfferModel>> getOffers() async {
    final response = await jsonDecode(await rootBundle.loadString(JsonAssets.offers));
    try{
      return List<OfferModel>.from(
          (response as List).map((e) => OfferModel.fromJson(e)));
    }catch(e){
      throw const ServerException(ErrorMessageModel(
          statusCode: 400, statusMessage: 'Deals Error', success: false));
    }
  }
}
