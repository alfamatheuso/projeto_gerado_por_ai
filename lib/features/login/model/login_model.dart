class LoginModel {
  final String email;
  final String password;
  final String username;

  LoginModel({required this.email, required this.password, required this.username});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'username': username,
    };
  }
}