import 'package:equatable/equatable.dart';
import '../../domain/entity/app_login_entity.dart';

class AppLoginModel extends Equatable implements AppLoginEntity
{
  final String? email;
  final String? phoneNumber;
  final String? password;
  final String? id;

  const AppLoginModel({
    this.email,
    this.phoneNumber,
    this.password,
    this.id,
  });

  factory AppLoginModel.fromFJson(Map<String, dynamic> json)
  {
    return AppLoginModel(
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      password: json['password'] as String?,
      id: json['userdata'] as String?,
    );
  }

  Map<String, dynamic> toFJson() =>
  {
    'email': email,
    'phoneNumber': phoneNumber,
    'password': password,
    'userdata': id,
  };

  @override
  List<Object?> get props => [email, phoneNumber, password, id];
  
  @override
  String? get userEmail => email;
  
  @override
  String? get userID => id;
  
  @override
  String? get userPassword => password;
  
  @override
  String? get userPhoneNumber => phoneNumber;
}
