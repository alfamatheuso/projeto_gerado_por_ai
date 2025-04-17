class LoginController {
  String email = '';
  String password = '';

  void setEmail(String value) {
    email = value;
  }

  void setPassword(String value) {
    password = value;
  }

  void login(BuildContext context) {
    if (email.isNotEmpty && password.isNotEmpty) {
      print("Login realizado com sucesso: $email");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Preencha todos os campos corretamente!')),
      );
    }
  }
}