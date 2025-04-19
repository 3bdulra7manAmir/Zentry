import 'package:equatable/equatable.dart';

class AppLoginEntity extends Equatable
{
  final String userEmail;
  final String userPassword;
  final String userPhoneNumber;

  const AppLoginEntity(this.userEmail, this.userPassword, this.userPhoneNumber);
  
  @override
  List<Object?> get props => [userEmail, userPassword, userPhoneNumber];
}