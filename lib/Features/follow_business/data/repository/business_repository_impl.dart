import '../../domain/entity/business_entity.dart';
import '../../domain/repository/business_repository.dart';
import '../datasources/business_local_data_source.dart';

class BusinessRepositoryImpl implements BusinessRepository
{
  final BusinessLocalDataSource _localDataSource;
  final List<int> _followedBusinesses = [];

  BusinessRepositoryImpl(this._localDataSource);

  @override
  Future<List<BusinessEntity>> getBusinesses() async
  {
    return await _localDataSource.getBusinesses();
  }

  @override
  Future<List<BusinessEntity>> getFollowedBusinesses() async
  {
    final allBusinesses = await getBusinesses();
    return allBusinesses.where((business) => _followedBusinesses.contains(business.id)).toList();
  }
}
