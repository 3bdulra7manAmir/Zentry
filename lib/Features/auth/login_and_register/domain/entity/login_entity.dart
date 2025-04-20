import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'login_entity.g.dart';

@HiveType(typeId: 0, adapterName: 'LoginDataAdaptor')
class LoginEntity extends Equatable
{
  @HiveField(0)
  final String? userID;

  @HiveField(1)  
  final String? userEmail;

  @HiveField(2)  
  final String? userPassword;

  @HiveField(3)  
  final String? userPhoneNumber;

  const LoginEntity(
    this.userID,
    this.userEmail,
    this.userPassword,
    this.userPhoneNumber,
  );

  @override
  List<Object?> get props => [userID, userEmail, userPassword, userPhoneNumber];
}
