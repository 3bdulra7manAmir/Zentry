import '../../domain/entity/business.dart';
import '../../domain/repository/business_repository.dart';
import '../datasources/business_local_data_source.dart';

class BusinessRepositoryImpl implements BusinessRepository {
  final BusinessLocalDataSource _localDataSource;
  final List<int> _followedBusinesses = [];

  BusinessRepositoryImpl(this._localDataSource);

  @override
  Future<List<Business>> getBusinesses() async {
    return await _localDataSource.getBusinesses();
  }

  @override
  Future<void> followBusiness(int businessId) async {
    if (!_followedBusinesses.contains(businessId)) {
      _followedBusinesses.add(businessId);
    }
  }

  @override
  Future<void> unfollowBusiness(int businessId) async {
    _followedBusinesses.remove(businessId);
  }

  @override
  Future<List<Business>> getFollowedBusinesses() async {
    final allBusinesses = await getBusinesses();
    return allBusinesses.where((business) => 
      _followedBusinesses.contains(business.id)
    ).toList();
  }
}
