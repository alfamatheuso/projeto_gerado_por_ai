import 'package:flutter/material.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    if (formKey.currentState!.validate()) {
      // Implementar lógica do login
    }
  }

  void navigateToRegister(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }
}