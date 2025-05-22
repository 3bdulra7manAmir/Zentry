class LoginEntity {
  final String email;
  final String phone;
  final String password;

  LoginEntity({
    this.email = '',
    this.phone = '',
    required this.password,
  }) : assert(email.isNotEmpty || phone.isNotEmpty, 'Either email or phone must be provided');

  factory LoginEntity.withEmail({required String email, required String password}) {
    return LoginEntity(email: email, password: password);
  }

  factory LoginEntity.withPhone({required String phone, required String password}) {
    return LoginEntity(phone: phone, password: password);
  }

  factory LoginEntity.fromJsonEmail(Map<String, dynamic> json) {
    return LoginEntity(
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  factory LoginEntity.fromJsonPhone(Map<String, dynamic> json) {
    return LoginEntity(
      phone: json['phone'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    if (email.isNotEmpty) {
      return {
        'email': email,
        'password': password,
      };
    } else {
      return {
        'phone': phone,
        'password': password,
      };
    }
  }
}
