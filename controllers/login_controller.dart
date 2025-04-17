import '../models/login_model.dart';

class LoginController {
  final LoginModel model;

  LoginController(this.model);

  void updateUsername(String username) {
    model.username = username;
  }

  void updatePassword(String password) {
    model.password = password;
  }

  bool validateLogin() {
    return model.username.isNotEmpty && model.password.isNotEmpty;
  }
}
