import '../model/register_model.dart';

class LoginRepository {
  Future<bool> registerUser(RegisterModel user) async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }
}