class LoginRepository {
  final ApiService apiService = ApiService();

  Future<bool> login(LoginModel loginModel) async {
    final response = await apiService.post('/login', loginModel.toJson());
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}