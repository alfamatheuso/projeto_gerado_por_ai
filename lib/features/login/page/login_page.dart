import 'package:flutter/material.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) => value!.isEmpty ? 'Informe um email' : null,
                onChanged: controller.onChangedEmail,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) => value!.length < 6 ? 'Mínimo 6 caracteres' : null,
                onChanged: controller.onChangedPassword,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: const Text('Registrar-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}