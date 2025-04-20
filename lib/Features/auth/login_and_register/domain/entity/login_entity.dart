import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable
{
  final String? userID;
  final String? userEmail;
  final String? userPassword;
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
