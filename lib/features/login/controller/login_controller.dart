import 'package:flutter/material.dart';

class LoginController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    final email = emailController.text;
    final password = passwordController.text;

    print('Tentativa de login com email: $email');
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}