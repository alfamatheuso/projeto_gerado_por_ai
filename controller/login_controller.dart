import 'package:flutter/material.dart';
import '../model/user_model.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  UserModel userModel = UserModel(username: '', password: '');

  void login(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bem-vindo, ${userModel.username}!')),
      );
    }
  }
}