import 'package:flutter/material.dart';
import '../controller/register_controller.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = RegisterController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar')),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: (value) => value!.isEmpty ? 'Informe um nome' : null,
                onChanged: controller.onChangedName,
              ),
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
                  controller.submit();
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