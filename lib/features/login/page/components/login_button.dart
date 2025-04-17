import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const LoginButton({required this.onPressed, this.text = "Login"});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}