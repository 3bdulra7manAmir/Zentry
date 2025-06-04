import '../entity/business_entity.dart';

abstract class BusinessRepository
{
  Future<List<BusinessEntity>> getBusinesses();
  Future<List<BusinessEntity>> getFollowedBusinesses();
}
