class UserAccount{
  final String? email;
  final String? password;
  final String? role; 

  UserAccount({required this.email, required this.password, required this.role});


  static UserAccount fromJson(Map<String, dynamic> json) {
    return UserAccount(
      email: json['email'],
      password: json['password'],
      role: json['role'],
    );
  }
}