import 'package:flutter/material.dart';
import '../controller/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = RegisterController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: controller.nameController,
                decoration: const InputDecoration(labelText: 'Nome'),
                validator: controller.validateName,
              ),
              TextFormField(
                controller: controller.emailController,
                decoration: const InputDecoration(labelText: 'E-mail'),
                validator: controller.validateEmail,
              ),
              TextFormField(
                controller: controller.passwordController,
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: controller.validatePassword,
              ),
              TextFormField(
                controller: controller.confirmPasswordController,
                decoration:
                    const InputDecoration(labelText: 'Confirme sua senha'),
                obscureText: true,
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