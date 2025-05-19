class LoginEmailEntity
{
  final String? id;
  final String? userEmail;
  final String? userPassword;

  LoginEmailEntity({
    this.id,
    required this.userEmail,
    required this.userPassword,
  });

  factory LoginEmailEntity.fromJson(Map<String, dynamic> json)
  {
    return LoginEmailEntity(
      id: json['id']?.toString() ?? '',
      userEmail: json['email'] as String,
      userPassword: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return {
      'id': id,
      'email': userEmail,
      'password': userPassword,
    };
  }
}
