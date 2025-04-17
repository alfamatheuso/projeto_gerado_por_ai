import 'package:flutter/material.dart';
import '../controller/login_controller.dart';
import 'components/login_button.dart';
import 'components/register_text.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _controller.emailController,
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) => value!.isEmpty ? "Digite o email" : null,
              ),
              TextFormField(
                controller: _controller.passwordController,
                decoration: InputDecoration(labelText: "Senha"),
                obscureText: true,
                validator: (value) => value!.isEmpty ? "Digite a senha" : null,
              ),
              SizedBox(height: 20),
              LoginButton(onPressed: _controller.login),
              SizedBox(height: 10),
              RegisterText(onPressed: () => _controller.navigateToRegister(context)),
            ],
          ),
        ),
      ),
    );
  }
}