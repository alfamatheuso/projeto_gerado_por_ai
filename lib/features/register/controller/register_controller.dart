import 'package:flutter/material.dart';

class RegisterController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void register() {
    final email = emailController.text;
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (password == confirmPassword) {
      final newUser = RegisterModel(email: email, password: password, confirmPassword: confirmPassword);
      
      print('Usuário registrado: $email');
    } else {
      print('Senhas não conferem.');
    }
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}