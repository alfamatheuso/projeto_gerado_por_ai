import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registre-se')),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                onChanged: controller.onNameChanged,
                validator: controller.validateName,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: controller.onEmailChanged,
                validator: controller.validateEmail,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                onChanged: controller.onPasswordChanged,
                validator: controller.validatePassword,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Confirme a senha'),
                obscureText: true,
                onChanged: controller.onConfirmPasswordChanged,
                validator: controller.validateConfirmPassword,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => controller.register(context),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}