class LoginController {
  final LoginRepository repository = LoginRepository();

  Future<void> login(BuildContext context, String email, String password) async {
    final loginModel = LoginModel(email: email, password: password);
    final success = await repository.login(loginModel);

    if (success) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Falha no login. Verifique suas credenciais.')),
      );
    }
  }
}