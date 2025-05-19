import '../entity/business.dart';

abstract class BusinessRepository {
  Future<List<Business>> getBusinesses();
  Future<void> followBusiness(int businessId);
  Future<void> unfollowBusiness(int businessId);
  Future<List<Business>> getFollowedBusinesses();
}
