import 'package:equatable/equatable.dart';

class AppLoginEntity extends Equatable
{
  final String? userID;
  final String? userEmail;
  final String? userPassword;
  final String? userPhoneNumber;

  const AppLoginEntity(
    this.userID,
    this.userEmail,
    this.userPassword,
    this.userPhoneNumber,
  );

  @override
  List<Object?> get props => [userID, userEmail, userPassword, userPhoneNumber];
}
