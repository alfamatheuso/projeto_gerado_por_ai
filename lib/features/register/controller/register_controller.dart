import 'package:flutter/material.dart';

class RegisterController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';

  void onChangedName(String value) {
    name = value;
  }

  void onChangedEmail(String value) {
    email = value;
  }

  void onChangedPassword(String value) {
    password = value;
  }

  bool validate() {
    return formKey.currentState?.validate() ?? false;
  }

  void submit() {
    if (validate()) {
      formKey.currentState?.save();
      // lógica para cadastro aqui
    }
  }
}